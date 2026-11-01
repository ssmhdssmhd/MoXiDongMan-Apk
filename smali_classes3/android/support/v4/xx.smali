.class public Landroid/support/v4/xx;
.super Lnet/minidev/json/writer/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/minidev/json/writer/case<",
        "Lnet/minidev/json/JSONAwareEx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/minidev/json/writer/try;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/case;-><init>(Lnet/minidev/json/writer/try;)V

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lnet/minidev/json/do;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lnet/minidev/json/do;

    invoke-direct {v0}, Lnet/minidev/json/do;-><init>()V

    return-object v0
.end method

.method public createObject()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startArray(Ljava/lang/String;)Lnet/minidev/json/writer/case;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/case<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lnet/minidev/json/writer/case;->base:Lnet/minidev/json/writer/try;

    iget-object p1, p1, Lnet/minidev/json/writer/try;->for:Lnet/minidev/json/writer/case;

    return-object p1
.end method

.method public startObject(Ljava/lang/String;)Lnet/minidev/json/writer/case;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/case<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lnet/minidev/json/writer/case;->base:Lnet/minidev/json/writer/try;

    iget-object p1, p1, Lnet/minidev/json/writer/try;->for:Lnet/minidev/json/writer/case;

    return-object p1
.end method
