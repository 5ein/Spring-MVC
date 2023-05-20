package com.multi.mongoDB;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Updates;

public class MongoDBTest2_memo {

	public static void main(String[] args) {
		// 1. 몽고db 프로그램에 연결
		MongoClient client = new MongoClient("localhost", 27017);
		System.out.println("1. 몽고db 프로그램에 연결 성공.");

		// 2. shop2로 연결
		MongoDatabase database = client.getDatabase("shop2");
		System.out.println("2. shop2 db로 연결 성공.");

		// 3. memo 컬렉션에 연결
		MongoCollection<Document> collection = database.getCollection("memo");
		System.out.println("3. memo 컬렉션에 연결 성공.");
		
		//(1)insertOne
//		Document doc = new Document();
//		doc.append("name", "song");
//		doc.append("age", 500);
//		doc.append("office", "busan");
//		doc.append("phone", "011");
//		
//		collection.insertOne(doc);
//		client.close();
//		System.out.println("(1)insertOne 성공.");
		
		//(2)insertMany
//		Document doc1 = new Document();
//		doc1.append("name", "song2");
//		doc1.append("age", 501);
//		doc1.append("office", "busan");
//		doc1.append("phone", "011");
//		
//		Document doc2 = new Document();
//		doc2.append("name", "song3");
//		doc2.append("age", 502);
//		doc2.append("office", "busan");
//		doc2.append("phone", "011");
//		
//		Document doc3 = new Document();
//		doc3.append("name", "song4");
//		doc3.append("age", 503);
//		doc3.append("office", "busan");
//		doc3.append("phone", "011");
//		
//		List<Document> list = new ArrayList<Document>();
//		list.add(doc1);
//		list.add(doc2);
//		list.add(doc3);
//		
//		collection.insertMany(list);
//		client.close();
//		System.out.println("(2)insertMany 성공.");
		
		//(3)deleteOne
//		Document filter = new Document();
//		filter.append("age", 500);
//		
//		collection.deleteOne(filter);
//		client.close();
//		System.out.println("(3)deleteOne 성공.");

		//(4)updateOne
//		Document filter = new Document();
//		filter.append("age", 501);
//		
//		Bson set = Updates.set("name", "songsong");
//		
//		collection.updateOne(filter, set);
//		client.close();
//		System.out.println("(4)updateOne 성공.");
		
		//(5)updateMany
//		Document filter = new Document();
//		filter.append("office", "busan");
//		
//		Bson set = Updates.set("phon", "9999");
//		Bson set1 = Updates.set("name", "songsong2");
//		Bson set2 = Updates.set("age", 555);
//		
//		List<Bson> list = new ArrayList<Bson>();
//		list.add(set);
//		list.add(set1);
//		list.add(set2);
//		
//		Bson setts = Updates.combine(list);
//		
//		collection.updateMany(filter, setts);
//		client.close();
//		System.out.println("(5)updateMany 성공.");
		
	}

}
