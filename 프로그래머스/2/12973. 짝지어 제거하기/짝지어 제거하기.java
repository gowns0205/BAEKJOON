import java.util.*;
import java.io.*;

class Solution
{
    public int solution(String s){
        Stack<Character> stack = new Stack<>();
        
        for(int i=0; i<s.length(); i++){
            char cur = s.charAt(i);
            if(stack.isEmpty()){
                stack.push(cur);
                continue;
            }
            if(stack.peek()==cur){
                stack.pop();
                continue;
            }
            stack.push(cur);
        }
        
        if(stack.isEmpty())
            return 1;
        else
            return 0;
    }
}