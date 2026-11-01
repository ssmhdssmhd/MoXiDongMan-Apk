.class Lnet/minidev/json/parser/case;
.super Lnet/minidev/json/parser/else;
.source "SourceFile"


# instance fields
.field private extends:Ljava/io/Reader;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/parser/else;-><init>(I)V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/case;->extends:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    int-to-char v0, v0

    .line 2
    :goto_0
    iput-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    .line 3
    iget v0, p0, Lnet/minidev/json/parser/if;->else:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/if;->else:I

    return-void
.end method

.method public catch()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/case;->extends:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    int-to-char v0, v0

    .line 2
    iput-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/ic1;

    iget v1, p0, Lnet/minidev/json/parser/if;->else:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    const-string v3, "EOF"

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/ic1;-><init>(IILjava/lang/Object;)V

    throw v0
.end method

.method public final()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    iget-char v1, p0, Lnet/minidev/json/parser/if;->do:C

    invoke-virtual {v0, v1}, Lnet/minidev/json/parser/if$do;->do(C)V

    .line 2
    iget-object v0, p0, Lnet/minidev/json/parser/case;->extends:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1a

    .line 3
    iput-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    goto :goto_0

    :cond_0
    int-to-char v0, v0

    .line 4
    iput-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    .line 5
    iget v0, p0, Lnet/minidev/json/parser/if;->else:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/if;->else:I

    :goto_0
    return-void
.end method

.method public return(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    iget-object v0, v0, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {p0, p1, v0}, Lnet/minidev/json/parser/case;->static(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lnet/minidev/json/writer/case<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lnet/minidev/json/writer/case;->base:Lnet/minidev/json/writer/try;

    iput-object v0, p0, Lnet/minidev/json/parser/if;->if:Lnet/minidev/json/writer/try;

    .line 2
    iput-object p1, p0, Lnet/minidev/json/parser/case;->extends:Ljava/io/Reader;

    .line 3
    invoke-super {p0, p2}, Lnet/minidev/json/parser/if;->new(Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
