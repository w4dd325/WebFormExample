﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MongoDB.Driver;
using MongoDB.Bson;

namespace WebFormExample
{
    public partial class _Default : Page
    {
        public string Mong_Change_Type = "";
        public string Mong_Product = "";
        public string Mong_Account_Number = "";
        public string Mong_DD_Current_Date = "";
        public string Mong_DD_Change_Date = "";


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        //Disable < today date in date picker
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < DateTime.Today)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.DarkGray;
            }
        }

        //Disable < today date in date picker 2
        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < DateTime.Today)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.DarkGray;
            }
        }


        protected void reset_Click(object sender, EventArgs e)
        {
            AccountNumber.Text = "";
            DDCurDate.SelectedDates.Clear();
            DDChangeDate.SelectedDates.Clear();
        }



            //Button event for sending form data to MongoDB
            protected void Mong_Click(object sender, EventArgs e)
        {
            //Connect to the MongoDB
            var settings = MongoClientSettings.FromConnectionString("mongodb+srv://Wadders_88:46U78vxmt4oJH8Sm@mySampleDB.xcrwt.mongodb.net/mySampleDB?retryWrites=true&w=majority");
            var client = new MongoClient(settings);
            var database = client.GetDatabase("DD");
            var collection = database.GetCollection<BsonDocument>("ChangeForm");

            //Save the input values to variables
            Mong_Change_Type = ChangeType.SelectedItem.ToString();
            Mong_Product = Product.SelectedItem.ToString();
            Mong_Account_Number = AccountNumber.Text;
            Mong_DD_Current_Date = DDCurDate.SelectedDate.ToString();
            Mong_DD_Change_Date = DDChangeDate.SelectedDate.ToString();

            //Build the document 
            var document = new BsonDocument { { "TimeStamp", DateTime.Now },
                                              { "Change_Type", Mong_Change_Type },
                                              { "Product", Mong_Product },
                                              { "Account_Number", Mong_Account_Number },
                                              { "DD_Current_Date", Mong_DD_Current_Date },
                                              { "DD_Change_Date", Mong_DD_Change_Date }
                                              };
            //insert the document
            collection.InsertOne(document);

            //Clear the form on submit
            AccountNumber.Text = "";
            DDCurDate.SelectedDates.Clear();
            DDChangeDate.SelectedDates.Clear();

        }
    }
}