open Printf
let print_member x = (match x with 
    |Types.Id(id) -> printf "Id:%i\n" id;
    |_ -> ();
)
let print_event event = 
    (match event with
    |Types.Country_event(ls) ->
        printf "Country Event\n";
        List.iter print_member ls; 
    |Types.Province_event(ls) ->();
        printf "Province Event\n";
        List.iter print_member ls;
)


let  print_events modfile =
        
        let ls =(match modfile with
            |Types.Events(cls)-> cls  
            |_-> [])
         in 

         let rec iterate_events tls =  match tls with 
            |x::xs ->print_event x;iterate_events xs 
            |[] -> ()
         in
         iterate_events ls
    
