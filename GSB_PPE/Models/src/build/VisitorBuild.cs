﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Models.src.metiers;
using Models.src.build;
using System.Configuration;

namespace Models.src.build
{
    public class VisitorBuild
    {
        protected string _table;
        private string path_api = ConfigurationManager.AppSettings["path_api"];

        public VisitorBuild()
        {
            this._table = "visitor";
        }

        public List<Visitor> findAll()
        {
            WebClient client = new WebClient();
            string getJson = client.DownloadString(path_api + this._table + "/all");
            List<Visitor> listClass = JsonConvert.DeserializeObject<List<Visitor>>(getJson);
            return listClass;
        }

        public Visitor findOne(String id)
        {
            WebClient client = new WebClient();
            string getJson = client.DownloadString(path_api + this._table + "/" + id);
            List<Visitor> listClass = JsonConvert.DeserializeObject<List<Visitor>>(getJson);
            return listClass[0];
        }

        //find one Visitor by lastName and firstName
        public Visitor findOneByName(String last_name, String first_name)
        {
            WebClient client = new WebClient();
            string getJson = client.DownloadString(path_api + this._table + "/" + last_name + "/" + first_name);
            List<Visitor> listClass = JsonConvert.DeserializeObject<List<Visitor>>(getJson);
            return listClass[0];
        }

        public TextResult addOne(String last_name, String first_name, String address, String recrutementDate, String departement_id, String member_id)
        {
            WebClient client = new WebClient();
            string getJson = client.DownloadString(path_api + this._table + "/add/"+last_name+"/"+first_name+"/"+ address + "/"+ recrutementDate + "/"+ departement_id + "/"+ member_id);
            TextResult result = JsonConvert.DeserializeObject<TextResult>(getJson);

            return result;
        }

        public TextResult delete(int visitor_id)
        {
            WebClient client = new WebClient();
            string getJson = client.DownloadString(path_api  + this._table + " /delete/" + visitor_id);
            TextResult result = JsonConvert.DeserializeObject<TextResult>(getJson);
            return result;
        }

        public TextResult update(int id, string lastname, string firstname, string address, string recrutementDate, int departement_id, int member_id = 1)
        {
            address = address.Replace("\n", "");
            WebClient client = new WebClient();
            string getJson = client.DownloadString(path_api + this._table + "/update/" + id + "/"+ lastname +"/"+ firstname +"/"+address+"/"+recrutementDate+"/"+departement_id+"/"+member_id);
            TextResult result = JsonConvert.DeserializeObject<TextResult>(getJson);
            return result;
        }
    }
}
