.class public interface abstract Lcom/jayway/jsonpath/Configuration$Defaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Defaults"
.end annotation


# virtual methods
.method public abstract jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;
.end method

.method public abstract mappingProvider()Lcom/jayway/jsonpath/spi/mapper/MappingProvider;
.end method

.method public abstract options()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/jayway/jsonpath/Option;",
            ">;"
        }
    .end annotation
.end method
