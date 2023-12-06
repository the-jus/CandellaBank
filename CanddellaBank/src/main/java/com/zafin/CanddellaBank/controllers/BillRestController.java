package com.zafin.CanddellaBank.controllers;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.draw.LineSeparator;
import com.zafin.CanddellaBank.entities.Transaction;
import com.zafin.CanddellaBank.repository.TransactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.time.LocalDate;

@RestController
public class BillRestController {


    @Autowired
    TransactionRepository transactionRepository;

    @RequestMapping("/generatebill/{id}")
    public String generateBill(@PathVariable("id") Long id) throws FileNotFoundException, DocumentException {
        Transaction transaction = transactionRepository.findById(id).get();
        LocalDate processingDate= LocalDate.now();
        Document document = new Document();
        PdfWriter pdfWriter = PdfWriter.getInstance(document,new FileOutputStream("C:\\Users\\AbhijithKumar\\"+transaction.getTransactionId()+"_"+transaction.getCustomerCode()+".pdf"));
        document.open();
        LineSeparator line = new LineSeparator();

        Paragraph bankName=new Paragraph("**************ZBANK**************");
        bankName.setAlignment(Element.ALIGN_CENTER);
        document.add(bankName);
        Paragraph header= new Paragraph("Bill for Account "+transaction.getAccountNumber());
        header.setAlignment(Element.ALIGN_CENTER);
        document.add(header);

        document.add(new Paragraph("Product Code : "+transaction.getProductCode()));
        document.add(new Paragraph("Service Code : "+transaction.getServiceCode()));
        document.add(new Paragraph("Processing Date : "+processingDate));
        document.add(new Paragraph("      "));
        document.add(line);
        Paragraph price=new Paragraph("Total Bill "+transaction.getFees());
        price.setAlignment(Element.ALIGN_RIGHT);
        document.add(price);
        document.close();
        pdfWriter.close();
        return "PDF Generated";
    }

}
