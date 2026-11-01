.class public Landroid/support/v4/vx;
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
    new-instance v0, Lnet/minidev/json/if;

    invoke-direct {v0}, Lnet/minidev/json/if;-><init>()V

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lnet/minidev/json/if;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object p1, p1, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

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

    iget-object p1, p1, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    return-object p1
.end method
