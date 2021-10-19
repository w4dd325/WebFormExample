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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < DateTime.Today)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.DarkGray;
            }
        }
        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < DateTime.Today)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.DarkGray;
            }
        }

        protected void Mong_Click(object sender, EventArgs e)
        {
            //Connect to the MongoDB
            var settings = MongoClientSettings.FromConnectionString("mongodb+srv://Wadders_88:46U78vxmt4oJH8Sm@mySampleDB.xcrwt.mongodb.net/mySampleDB?retryWrites=true&w=majority");
            var client = new MongoClient(settings);
            var database = client.GetDatabase("DD");
            var collection = database.GetCollection<BsonDocument>("ChangeForm");

            //Save the input values to variables
            var Mong_Change_Type = ChangeType.SelectedItem.ToString();
            var Mong_Product = Product.SelectedItem.ToString();
            var Mong_Account_Number = AccountNumber.Text;
            var Mong_DD_Current_Date = DDCurDate.SelectedDate;
            var Mong_DD_Change_Date = DDChangeDate.SelectedDate;

            //Build the document 
            var document = new BsonDocument { { "Change_Type", Mong_Change_Type },
                                              { "Product", Mong_Product },
                                              { "Account_Number", Mong_Account_Number },
                                              { "DD_Current_Date", Mong_DD_Current_Date },
                                              { "DD_Change_Date", Mong_DD_Change_Date }
                                              };
            //insert the document
            collection.InsertOne(document);
        }
    }
}