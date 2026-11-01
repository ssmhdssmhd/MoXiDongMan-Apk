.class public interface abstract Lcom/jayway/jsonpath/spi/mapper/MappingProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract map(Ljava/lang/Object;Lcom/jayway/jsonpath/TypeRef;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/jayway/jsonpath/TypeRef<",
            "TT;>;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract map(Ljava/lang/Object;Ljava/lang/Class;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation
.end method
