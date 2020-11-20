#require_relative '../lib/transfer'
require 'pry'

class BankAccount
    attr_accessor :balance, :status, :close_account
    attr_reader :name 
    
    @@all = [] 

    def initialize(name)
        @name = name 
        @balance = 1000
        @status = 'open'
        @@all << self 
    end 

    def deposit(num)
        @balance += num
    end 

    def display_balance
        "Your balance is $#{@balance}." 
    end 

    def valid?
        if self.status == 'open' && self.balance > 0
            true   
        else
            false 
        end
    end 
  
    def close_account
        self.status = "closed"
    end 

    def self.all 
        @@all
    end 

    

end