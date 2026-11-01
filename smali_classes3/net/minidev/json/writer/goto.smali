.class public Lnet/minidev/json/writer/goto;
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
.field public final do:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final if:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/minidev/json/writer/try;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/minidev/json/writer/try;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/case;-><init>(Lnet/minidev/json/writer/try;)V

    const-string v0, "can not update null Object"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lnet/minidev/json/writer/goto;->do:Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/goto;->if:Lnet/minidev/json/writer/case;

    return-void
.end method

.method public constructor <init>(Lnet/minidev/json/writer/try;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/minidev/json/writer/try;",
            "TT;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/case;-><init>(Lnet/minidev/json/writer/try;)V

    const-string v0, "can not update null Object"

    .line 6
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lnet/minidev/json/writer/goto;->do:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1, p3}, Lnet/minidev/json/writer/try;->for(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/case;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/writer/goto;->if:Lnet/minidev/json/writer/case;

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/goto;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/writer/case;->addValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/goto;->do:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/writer/goto;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p1}, Lnet/minidev/json/writer/case;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/goto;->do:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/writer/goto;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0}, Lnet/minidev/json/writer/case;->createArray()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/goto;->do:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/writer/goto;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0}, Lnet/minidev/json/writer/case;->createObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Lnet/minidev/json/writer/goto;->if:Lnet/minidev/json/writer/case;

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
    iget-object v0, p0, Lnet/minidev/json/writer/goto;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p1}, Lnet/minidev/json/writer/case;->startArray(Ljava/lang/String;)Lnet/minidev/json/writer/case;

    move-result-object p1

    return-object p1
.end method

.method public startObject(Ljava/lang/String;)Lnet/minidev/json/writer/case;
    .locals 4
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
    iget-object v0, p0, Lnet/minidev/json/writer/goto;->if:Lnet/minidev/json/writer/case;

    iget-object v1, p0, Lnet/minidev/json/writer/goto;->do:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lnet/minidev/json/writer/case;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/minidev/json/writer/goto;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p1}, Lnet/minidev/json/writer/case;->startObject(Ljava/lang/String;)Lnet/minidev/json/writer/case;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v1, Lnet/minidev/json/writer/goto;

    iget-object v2, p0, Lnet/minidev/json/writer/case;->base:Lnet/minidev/json/writer/try;

    iget-object v3, p0, Lnet/minidev/json/writer/goto;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v3, p1}, Lnet/minidev/json/writer/case;->getType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1}, Lnet/minidev/json/writer/goto;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    return-object v1
.end method
