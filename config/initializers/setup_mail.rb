ActionMailer::Base.smtp_settings = {
  :address                =>  "smtp.gmail.com",
  :port                   => 587,
  :domain                 => "cinematoholix.pl",
  :user_name              => "zpi.projekt.2011",
  :password               => "zpiprojekt",
  :authentication         => "plain",
  :enable_starttls_auto   => true  
}
