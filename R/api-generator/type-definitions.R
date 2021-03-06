type_map_list <- list(
    Array = "List",
    Boolean = "Logical",
    String = "Character"
)
## We cannot do the conversion for the other type
## as the yaml file contians error..
type_conversion_list <- list(
    array = "as.list",
    object = "as.list"
)

excluded_short_description <- c("others", "simplify", "Filter", "NextToken", "nextToken")
excluded_request_names <- c("Action", "Version", "X-Amz-Target")
token_names <- c("nextToken", "NextToken")

# api info format
api_template <- list(
    name = "",
    parameters = S4Vectors::DataFrame(
        name = NULL,
        type = NULL,
        required = NULL,
        description = NULL
    ),
    description = "",
    document="",
    definition=""
)

get_nonexclude_short_description_bool <- function(x){
    !x %in% excluded_short_description
}

map_names_lower <- tolower(names(type_map_list))
type_mapping <- function(x){
    for(i in seq_along(x)){
        idx <- which(map_names_lower==tolower(x[[i]]))
        if(length(idx)){
            x[[i]] <- type_map_list[[idx]]
        }
    }
    x
}
