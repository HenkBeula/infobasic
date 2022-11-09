package io.henks.helloworld;
public class helloworld {
    public static void main(String [] args){
        Greeting greeting = new Greeting();
        String message = greeting.hello("Henk");
        System.out.println(message);
    }
}
