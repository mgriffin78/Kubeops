ec2_map = {   
    linux1 = {
      Name = "linux_prod_web"     
      env = "MODIFIED"
      app = "web"
    },
    linux2 = {
     Name = "linux_prod_db"    
     env = "prod2"
     app = "db"
    },
    linux3 = {
      Name = "IAC_dev_web"    
      env = "dev1"
      app = "web"
    },
    linux4 = {
      Name = "IAC_dev_db"    
      env = "MODIFIED"
      app = "db"
    },
     linux5 = {
      Name = "linux_qa_web"    
      env = "qa1"
      app = "web"
    },
    linux6 = {
      Name = "linux_qa_db"    
      env = "qa2"
      app = "db"
},
    linux7 = {
      Name = "IACEXAMPLE"    
      env = "qa2"
      app = "db"
}
}