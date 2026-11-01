.class final Lcom/google/common/io/if$break;
.super Lcom/google/common/io/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "break"
.end annotation


# instance fields
.field private final case:Lcom/google/common/io/if;

.field private final else:Ljava/lang/String;

.field private final goto:I


# direct methods
.method public constructor <init>(Lcom/google/common/io/if;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/io/if;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/io/if;

    iput-object p1, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    .line 3
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/io/if$break;->else:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/google/common/io/if$break;->goto:I

    if-lez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "Cannot add a separator after every %s chars"

    .line 5
    invoke-static {p1, p2, p3}, Landroid/support/v4/af1;->catch(ZLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/CharSequence;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/google/common/io/if$break;->else:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    invoke-virtual {p1, v0}, Lcom/google/common/io/if;->case(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public catch(Ljava/io/Reader;)Ljava/io/InputStream;
    .locals 2
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    iget-object v1, p0, Lcom/google/common/io/if$break;->else:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/common/io/if;->import(Ljava/io/Reader;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/io/if;->catch(Ljava/io/Reader;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public default(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    invoke-virtual {v0, p1}, Lcom/google/common/io/if;->default(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public extends()Lcom/google/common/io/if;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    invoke-virtual {v0}, Lcom/google/common/io/if;->extends()Lcom/google/common/io/if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/if$break;->else:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/if$break;->goto:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/if;->package(Ljava/lang/String;I)Lcom/google/common/io/if;

    move-result-object v0

    return-object v0
.end method

.method public final(Ljava/lang/Appendable;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    iget-object v1, p0, Lcom/google/common/io/if$break;->else:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/if$break;->goto:I

    invoke-static {p1, v1, v2}, Lcom/google/common/io/if;->switch(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/io/if;->final(Ljava/lang/Appendable;[BII)V

    return-void
.end method

.method public finally(C)Lcom/google/common/io/if;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    invoke-virtual {v0, p1}, Lcom/google/common/io/if;->finally(C)Lcom/google/common/io/if;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/io/if$break;->else:Ljava/lang/String;

    iget v1, p0, Lcom/google/common/io/if$break;->goto:I

    invoke-virtual {p1, v0, v1}, Lcom/google/common/io/if;->package(Ljava/lang/String;I)Lcom/google/common/io/if;

    move-result-object p1

    return-object p1
.end method

.method public native()Lcom/google/common/io/if;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    invoke-virtual {v0}, Lcom/google/common/io/if;->native()Lcom/google/common/io/if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/if$break;->else:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/if$break;->goto:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/if;->package(Ljava/lang/String;I)Lcom/google/common/io/if;

    move-result-object v0

    return-object v0
.end method

.method public package(Ljava/lang/String;I)Lcom/google/common/io/if;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Already have a separator"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public public(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    invoke-virtual {v0, p1}, Lcom/google/common/io/if;->public(I)I

    move-result p1

    return p1
.end method

.method public return(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    invoke-virtual {v0, p1}, Lcom/google/common/io/if;->return(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/google/common/io/if$break;->else:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/google/common/io/if$break;->goto:I

    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v1, v2, v3}, Lcom/google/common/math/new;->else(IILjava/math/RoundingMode;)I

    move-result v1

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    return p1
.end method

.method public static()Lcom/google/common/io/if;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    invoke-virtual {v0}, Lcom/google/common/io/if;->static()Lcom/google/common/io/if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/if$break;->else:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/if$break;->goto:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/if;->package(Ljava/lang/String;I)Lcom/google/common/io/if;

    move-result-object v0

    return-object v0
.end method

.method public this([BLjava/lang/CharSequence;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/if$this;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/google/common/io/if$break;->else:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    invoke-virtual {p2, p1, v0}, Lcom/google/common/io/if;->this([BLjava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method public throw(Ljava/io/Writer;)Ljava/io/OutputStream;
    .locals 3
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    iget-object v1, p0, Lcom/google/common/io/if$break;->else:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/if$break;->goto:I

    invoke-static {p1, v1, v2}, Lcom/google/common/io/if;->throws(Ljava/io/Writer;Ljava/lang/String;I)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/io/if;->throw(Ljava/io/Writer;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/io/if$break;->case:Lcom/google/common/io/if;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".withSeparator(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/io/if$break;->else:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/common/io/if$break;->goto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
