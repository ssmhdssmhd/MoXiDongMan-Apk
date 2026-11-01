.class final Lfreemarker/core/c3;
.super Lfreemarker/core/throw;
.source "SourceFile"


# instance fields
.field private final goto:Lfreemarker/core/h0;

.field private final this:Lfreemarker/core/h0;


# direct methods
.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/throw;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/c3;->goto:Lfreemarker/core/h0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/c3;->this:Lfreemarker/core/h0;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "||"

    return-object v0
.end method

.method public continue(Lfreemarker/core/d0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/c3;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->continue(Lfreemarker/core/d0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/core/c3;->this:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->continue(Lfreemarker/core/d0;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/core/c3;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " || "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/c3;->this:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    .line 1
    invoke-static {p1}, Lfreemarker/core/f3;->do(I)Lfreemarker/core/f3;

    move-result-object p1

    return-object p1
.end method

.method public instanceof()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/h0;->else:Lfreemarker/template/TemplateModel;

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/core/c3;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h0;->instanceof()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/c3;->this:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h0;->instanceof()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/core/c3;

    iget-object v1, p0, Lfreemarker/core/c3;->goto:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/c3;->this:Lfreemarker/core/h0;

    .line 3
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lfreemarker/core/c3;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    return-object v0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/c3;->this:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lfreemarker/core/c3;->goto:Lfreemarker/core/h0;

    return-object p1
.end method
