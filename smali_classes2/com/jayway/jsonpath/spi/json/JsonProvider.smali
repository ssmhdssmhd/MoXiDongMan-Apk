.class public interface abstract Lcom/jayway/jsonpath/spi/json/JsonProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNDEFINED:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/jayway/jsonpath/spi/json/JsonProvider;->UNDEFINED:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract createArray()Ljava/lang/Object;
.end method

.method public abstract createMap()Ljava/lang/Object;
.end method

.method public abstract getArrayIndex(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public abstract getArrayIndex(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMapValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getPropertyKeys(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isArray(Ljava/lang/Object;)Z
.end method

.method public abstract isMap(Ljava/lang/Object;)Z
.end method

.method public abstract length(Ljava/lang/Object;)I
.end method

.method public abstract parse(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jayway/jsonpath/InvalidJsonException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jayway/jsonpath/InvalidJsonException;
        }
    .end annotation
.end method

.method public abstract removeProperty(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract setArrayIndex(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method public abstract setProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract toIterable(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract toJson(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract unwrap(Ljava/lang/Object;)Ljava/lang/Object;
.end method
