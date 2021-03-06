#' get_brite_res
#' 
#' Get KEGG BRITE and pathway information for specific KEGG compound IDs.
#' 
#' 
#' @param keggid Input KEGG compound ID. e.g.: "C00073"
#' @return Return an R object with KEGG ID mapped to KEGG Brite category,
#' pathway IDs, and links to external databases.
#' @author Karan Uppal
#' @keywords ~KEGG BRITE
get_brite_res <- function(keggid) {
    
    b1 <- keggGet(paste("cpd:", keggid, sep = ""))
    brite_inf <- paste(b1[[1]]$BRITE, collapse = ";")
    path_inf <- paste(b1[[1]]$PATHWAYS, collapse = ";")
    otherdb_inf <- paste(b1[[1]]$DBLINKS, collapse = ";")
    r1 <- c(as.character(keggid), as.character(brite_inf), 
        as.character(path_inf), as.character(otherdb_inf))
    
    return(r1)
    
    
}
