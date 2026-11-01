.class public interface abstract Lcom/jayway/jsonpath/Predicate$PredicateContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PredicateContext"
.end annotation


# virtual methods
.method public abstract configuration()Lcom/jayway/jsonpath/Configuration;
.end method

.method public abstract item()Ljava/lang/Object;
.end method

.method public abstract item(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jayway/jsonpath/spi/mapper/MappingException;
        }
    .end annotation
.end method

.method public abstract root()Ljava/lang/Object;
.end method
