.class public Lnet/minidev/json/writer/else;
.super Lnet/minidev/json/writer/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/minidev/json/writer/case<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private if:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/minidev/json/writer/case;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/minidev/json/writer/case<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lnet/minidev/json/writer/case;->base:Lnet/minidev/json/writer/try;

    invoke-direct {p0, v0}, Lnet/minidev/json/writer/case;-><init>(Lnet/minidev/json/writer/try;)V

    .line 2
    iput-object p1, p0, Lnet/minidev/json/writer/else;->if:Lnet/minidev/json/writer/case;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/minidev/json/writer/else;->do:Ljava/util/Map;

    return-void
.end method

.method private do(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/else;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public createObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/else;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0}, Lnet/minidev/json/writer/case;->createObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/else;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lnet/minidev/json/writer/else;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p1}, Lnet/minidev/json/writer/case;->getType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lnet/minidev/json/writer/else;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lnet/minidev/json/writer/else;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/writer/case;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/else;->do:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lnet/minidev/json/writer/else;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lnet/minidev/json/writer/else;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p1, p2, p3}, Lnet/minidev/json/writer/case;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startArray(Ljava/lang/String;)Lnet/minidev/json/writer/case;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/case<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/else;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lnet/minidev/json/writer/else;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p1}, Lnet/minidev/json/writer/case;->startArray(Ljava/lang/String;)Lnet/minidev/json/writer/case;

    move-result-object p1

    return-object p1
.end method

.method public startObject(Ljava/lang/String;)Lnet/minidev/json/writer/case;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/case<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/else;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lnet/minidev/json/writer/else;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p1}, Lnet/minidev/json/writer/case;->startObject(Ljava/lang/String;)Lnet/minidev/json/writer/case;

    move-result-object p1

    return-object p1
.end method
