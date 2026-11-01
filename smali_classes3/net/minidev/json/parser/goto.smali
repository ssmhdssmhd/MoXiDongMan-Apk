.class Lnet/minidev/json/parser/goto;
.super Lnet/minidev/json/parser/try;
.source "SourceFile"


# instance fields
.field private finally:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/parser/try;-><init>(I)V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 2

    .line 1
    iget v0, p0, Lnet/minidev/json/parser/if;->else:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/if;->else:I

    iget v1, p0, Lnet/minidev/json/parser/try;->extends:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    .line 2
    iput-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lnet/minidev/json/parser/goto;->finally:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    :goto_0
    return-void
.end method

.method public catch()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/minidev/json/parser/if;->else:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/if;->else:I

    iget v1, p0, Lnet/minidev/json/parser/try;->extends:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lnet/minidev/json/parser/goto;->finally:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    return-void

    :cond_0
    const/16 v0, 0x1a

    .line 3
    iput-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    .line 4
    new-instance v0, Landroid/support/v4/ic1;

    iget v1, p0, Lnet/minidev/json/parser/if;->else:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    const-string v3, "EOF"

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/ic1;-><init>(IILjava/lang/Object;)V

    throw v0
.end method

.method public default(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
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
    iput-object p1, p0, Lnet/minidev/json/parser/goto;->finally:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lnet/minidev/json/parser/try;->extends:I

    .line 4
    invoke-virtual {p0, p2}, Lnet/minidev/json/parser/if;->new(Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final()V
    .locals 2

    .line 1
    iget v0, p0, Lnet/minidev/json/parser/if;->else:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/if;->else:I

    iget v1, p0, Lnet/minidev/json/parser/try;->extends:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    .line 2
    iput-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lnet/minidev/json/parser/goto;->finally:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    :goto_0
    return-void
.end method

.method public return(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/goto;->finally:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    return-void
.end method

.method public static(II)V
    .locals 2

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-ge p1, v0, :cond_1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/goto;->finally:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v0, p2, -0x1

    if-le v0, p1, :cond_3

    .line 2
    iget-object v1, p0, Lnet/minidev/json/parser/goto;->finally:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 3
    :cond_3
    :goto_2
    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/parser/goto;->return(II)V

    return-void
.end method

.method public switch(CI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/goto;->finally:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    return p1
.end method

.method public throws(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    iget-object v0, v0, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {p0, p1, v0}, Lnet/minidev/json/parser/goto;->default(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
