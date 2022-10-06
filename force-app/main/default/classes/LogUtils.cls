public class LogUtils {
  
    private LogUtils() {}
   
    /**
    * @param  logLevel  the logging level to assign to the log message
    * @param  methodName the name of the method
    * @param  message the message to log
    * @return   none
    */
    public static void log(LoggingLevel logLevel, String methodName, Object message) {
        System.debug(logLevel, methodName + ': ' + message);
    }
   
    /**
    * @param  logLevel  the logging level to assign to the log message
    * @param  methodName the name of the method
    * @param  nameValues the map containing parameter names and their values
    * @return   none
    */
    public static void log(LoggingLevel logLevel, String methodName, Map<String, Object> nameValues) {
        List<String> tokens = new List<String>();
        for (String key: nameValues.keySet()) {
            Object value = nameValues.get(key);
            if (value instanceof List<Object>) {
                if (value != null) {
                    List<String> items = new List<String>();
                    for (Object item: (List<Object>)value) {
                        if (item != null) {
                            items.add(String.valueOf(item));
                        } else {
                            items.add('null');
                        }
                    }
                    tokens.add(key + ' = [ ' + String.join(items, ', ') + ' ]');
                } else {
                    tokens.add(key + ' = null');
                }
            } else if (value instanceof Map<String, Object>) {
                List<String> items = new List<String>();
                Map<String, Object> valueMap = (Map<String, Object>)value;
                for (String valueKey: valueMap.keySet()) {
                    if (valueMap.get(valueKey) != null) {
                        items.add(valueKey + ' => ' + String.valueOf(valueMap.get(valueKey)));
                    } else {
                        items.add(valueKey + ' => null');
                    }
                }
                tokens.add(key + ' = [ ' + String.join(items, ', ') + ' ]');
            } else {
                if (nameValues.get(key) != null) {
                  tokens.add(key + ' = ' + String.valueOf(nameValues.get(key)));
                } else {
                    tokens.add(key + ' = null');
                }
            }
        }
        log( logLevel, methodName, String.join(tokens, ', ') );
    }
   
    /**
    * @param  logLevel  the logging level to assign to the log message
    * @param  methodName the name of the method
    * @param  name1 the name of the parameter
    * @param  value1 the value of the parameter
    * @return   none
    */
    public static void log(LoggingLevel logLevel, String methodName, String name1, Object value1) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1 };
        log(logLevel, methodName, nameValues);
    }
   
    /**
    * @param  logLevel  the logging level to assign to the log message
    * @param  methodName the name of the method
    * @param  name1 the name of the first parameter
    * @param  value1 the value of the first parameter
    * @param  name2 the name of the second parameter
    * @param  value2 the value of the second parameter
    * @return   none
    */
    public static void log(LoggingLevel logLevel, String methodName, String name1, Object value1, String name2, Object value2) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1, name2 => value2 };
        log(logLevel, methodName, nameValues);
    }
   
    /**
    * @param  logLevel  the logging level to assign to the log message
    * @param  methodName the name of the method
    * @param  name1 the name of the first parameter
    * @param  value1 the value of the first parameter
    * @param  name2 the name of the second parameter
    * @param  value2 the value of the second parameter
    * @param  name3 the name of the third parameter
    * @param  value3 the value of the third parameter
    * @return   none
    */
    public static void log(LoggingLevel logLevel, String methodName, String name1, Object value1, String name2, Object value2, String name3, Object value3) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1, name2 => value2, name3 => value3 };
        log(logLevel, methodName, nameValues);
  
    }
   
    /**
    * @param  logLevel  the logging level to assign to the log message
    * @param  methodName the name of the method
    * @param  name1 the name of the first parameter
    * @param  value1 the value of the first parameter
    * @param  name2 the name of the second parameter
    * @param  value2 the value of the second parameter
    * @param  name3 the name of the third parameter
    * @param  value3 the value of the third parameter
    * @param  name4 the name of the fourth parameter
    * @param  value4 the value of the fourth parameter
    * @return   none
    */
    public static void log(LoggingLevel logLevel, String methodName, String name1, Object value1, String name2, Object value2, String name3, Object value3, String name4, Object value4) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1, name2 => value2, name3 => value3, name4 => value4 };
        log(logLevel, methodName, nameValues);
    }
   
    /**
    * @param  logLevel  the logging level to assign to the log message
    * @param  methodName the name of the method
    * @param  name1 the name of the first parameter
    * @param  value1 the value of the first parameter
    * @param  name2 the name of the second parameter
    * @param  value2 the value of the second parameter
    * @param  name3 the name of the third parameter
    * @param  value3 the value of the third parameter
    * @param  name4 the name of the fourth parameter
    * @param  value4 the value of the fourth parameter
    * @param  name5 the name of the fifth parameter
    * @param  value5 the value of the fifth parameter
    * @return   none
    */
    public static void log(LoggingLevel logLevel, String methodName, String name1, Object value1, String name2, Object value2, String name3, Object value3, String name4, Object value4, String name5, Object value5) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1, name2 => value2, name3 => value3, name4 => value4, name5 => value5 };
        log(logLevel, methodName, nameValues);
    }
   
    /**
    * @param  methodName the name of the method
    * @param  message the message to log
    * @return   none
    */
    public static void logError(String methodName, Object message) {
        log(LoggingLevel.ERROR, methodName, message);
    }
   
    /**
    * @param  methodName the name of the method
    * @param  name1 the name of the parameter
    * @param  value1 the value of the parameter
    * @return   none
    */
    public static void logError(String methodName, String name1, Object value1) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1 };
        log(LoggingLevel.ERROR, methodName, nameValues);
    }
   
    /**
    * @param  methodName the name of the method
    * @param  name1 the name of the first parameter
    * @param  value1 the value of the first parameter
    * @param  name2 the name of the second parameter
    * @param  value2 the value of the second parameter
    * @return   none
    */
    public static void logError(String methodName, String name1, Object value1, String name2, Object value2) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1, name2 => value2 };
        log(LoggingLevel.ERROR, methodName, nameValues);
    }
   
    /**
    * @param  methodName the name of the method
    * @param  name1 the name of the first parameter
    * @param  value1 the value of the first parameter
    * @param  name2 the name of the second parameter
    * @param  value2 the value of the second parameter
    * @param  name3 the name of the third parameter
    * @param  value3 the value of the third parameter
    * @return   none
    */
    public static void logError(String methodName, String name1, Object value1, String name2, Object value2, String name3, Object value3) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1, name2 => value2, name3 => value3 };
        log(LoggingLevel.ERROR, methodName, nameValues);
    }
   
    /**
    * @param  methodName the name of the method
    * @param  name1 the name of the first parameter
    * @param  value1 the value of the first parameter
    * @param  name2 the name of the second parameter
    * @param  value2 the value of the second parameter
    * @param  name3 the name of the third parameter
    * @param  value3 the value of the third parameter
    * @param  name4 the name of the fourth parameter
    * @param  value4 the value of the fourth parameter
    * @return   none
    */
  
    public static void logError(String methodName, String name1, Object value1, String name2, Object value2, String name3, Object value3, String name4, Object value4) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1, name2 => value2, name3 => value3, name4 => value4 };
        log(LoggingLevel.ERROR, methodName, nameValues);
    }
   
    /**
    * @param  methodName the name of the method
    * @param  name1 the name of the first parameter
    * @param  value1 the value of the first parameter
    * @param  name2 the name of the second parameter
    * @param  value2 the value of the second parameter
    * @param  name3 the name of the third parameter
    * @param  value3 the value of the third parameter
    * @param  name4 the name of the fourth parameter
    * @param  value4 the value of the fourth parameter
    * @param  name5 the name of the fifth parameter
    * @param  value5 the value of the fifth parameter
    * @return   none
    */
    public static void logError(String methodName, String name1, Object value1, String name2, Object value2, String name3, Object value3, String name4, Object value4, String name5, Object value5) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1, name2 => value2, name3 => value3, name4 => value4, name5 => value5 };
        log(LoggingLevel.ERROR, methodName, nameValues);
    }
   
    /**
    * @param  methodName the name of the method
    * @param  nameValues the map containing parameter names and their values
    * @return   none
    */
    public static void logError(String methodName, Map<String, Object> nameValues) {
        log(LoggingLevel.ERROR, methodName, nameValues);
    }
   
    /**
    * @param  methodName the name of the method
    * @param  message the message to log
    * @return   none
    */
    public static void logInfo(String methodName, Object message) {
        log(LoggingLevel.INFO, methodName, message);
    }
   
    /**
    * @param  methodName the name of the method
    * @param  name1 the name of the parameter
    * @param  value1 the value of the parameter
    * @return   none
    */
    public static void logInfo(String methodName, String name1, Object value1) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1 };
        log(LoggingLevel.INFO, methodName, nameValues);
    }
   
    /**
    * @param  methodName the name of the method
    * @param  name1 the name of the first parameter
    * @param  value1 the value of the first parameter
    * @param  name2 the name of the second parameter
    * @param  value2 the value of the second parameter
    * @return   none
    */
    public static void logInfo(String methodName, String name1, Object value1, String name2, Object value2) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1, name2 => value2 };
        log(LoggingLevel.INFO, methodName, nameValues);
    }
   
    /**
    * @param  methodName the name of the method
    * @param  name1 the name of the first parameter
    * @param  value1 the value of the first parameter
    * @param  name2 the name of the second parameter
    * @param  value2 the value of the second parameter
    * @param  name3 the name of the third parameter
    * @param  value3 the value of the third parameter
    * @return   none
    */
    public static void logInfo(String methodName, String name1, Object value1, String name2, Object value2, String name3, Object value3) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1, name2 => value2, name3 => value3 };
        log(LoggingLevel.INFO, methodName, nameValues);
    }
   
    /**
    * @param  methodName the name of the method
    * @param  name1 the name of the first parameter
    * @param  value1 the value of the first parameter
    * @param  name2 the name of the second parameter
    * @param  value2 the value of the second parameter
    * @param  name3 the name of the third parameter
    * @param  value3 the value of the third parameter
    * @param  name4 the name of the fourth parameter
    * @param  value4 the value of the fourth parameter
    * @return   none
    */
    public static void logInfo(String methodName, String name1, Object value1, String name2, Object value2, String name3, Object value3, String name4, Object value4) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1, name2 => value2, name3 => value3, name4 => value4 };
        log(LoggingLevel.INFO, methodName, nameValues);
    }
   
    /**
    * @param  methodName the name of the method
  
    * @param  name1 the name of the first parameter
    * @param  value1 the value of the first parameter
    * @param  name2 the name of the second parameter
    * @param  value2 the value of the second parameter
    * @param  name3 the name of the third parameter
    * @param  value3 the value of the third parameter
    * @param  name4 the name of the fourth parameter
    * @param  value4 the value of the fourth parameter
    * @param  name5 the name of the fifth parameter
    * @param  value5 the value of the fifth parameter
    * @return   none
    */
    public static void logInfo(String methodName, String name1, Object value1, String name2, Object value2, String name3, Object value3, String name4, Object value4, String name5, Object value5) {
        Map<String, Object> nameValues = new Map<String, Object>{ name1 => value1, name2 => value2, name3 => value3, name4 => value4, name5 => value5 };
        log(LoggingLevel.INFO, methodName, nameValues);
    }
   
    /**
    * @param  methodName the name of the method
    * @param  nameValues the map containing parameter names and their values
    * @return   none
    */
    public static void logInfo(String methodName, Map<String, Object> nameValues) {
        log(LoggingLevel.INFO, methodName, nameValues);
    }
 }