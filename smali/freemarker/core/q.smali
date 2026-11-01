.class final Lfreemarker/core/q;
.super Lfreemarker/core/throw;
.source "SourceFile"


# instance fields
.field private final break:I

.field private final catch:Ljava/lang/String;

.field private final goto:Lfreemarker/core/h0;

.field private final this:Lfreemarker/core/h0;


# direct methods
.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/core/h0;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/throw;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/q;->goto:Lfreemarker/core/h0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/q;->this:Lfreemarker/core/h0;

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    .line 5
    iput-object p3, p0, Lfreemarker/core/q;->catch:Ljava/lang/String;

    const-string v0, "=="

    if-eq p3, v0, :cond_a

    const-string v0, "="

    if-ne p3, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "!="

    if-ne p3, v0, :cond_1

    const/4 p3, 0x2

    .line 6
    iput p3, p0, Lfreemarker/core/q;->break:I

    goto/16 :goto_5

    :cond_1
    const-string v0, "gt"

    if-eq p3, v0, :cond_9

    const-string v0, "\\gt"

    if-eq p3, v0, :cond_9

    const-string v0, ">"

    if-eq p3, v0, :cond_9

    const-string v0, "&gt;"

    if-ne p3, v0, :cond_2

    goto :goto_3

    :cond_2
    const-string v0, "gte"

    if-eq p3, v0, :cond_8

    const-string v0, "\\gte"

    if-eq p3, v0, :cond_8

    const-string v0, ">="

    if-eq p3, v0, :cond_8

    const-string v0, "&gt;="

    if-ne p3, v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "lt"

    if-eq p3, v0, :cond_7

    const-string v0, "\\lt"

    if-eq p3, v0, :cond_7

    const-string v0, "<"

    if-eq p3, v0, :cond_7

    const-string v0, "&lt;"

    if-ne p3, v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "lte"

    if-eq p3, v0, :cond_6

    const-string v0, "\\lte"

    if-eq p3, v0, :cond_6

    const-string v0, "<="

    if-eq p3, v0, :cond_6

    const-string v0, "&lt;="

    if-ne p3, v0, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    new-instance p1, Landroid/support/v4/mc;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown comparison operator "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    const/4 p3, 0x5

    .line 8
    iput p3, p0, Lfreemarker/core/q;->break:I

    goto :goto_5

    :cond_7
    :goto_1
    const/4 p3, 0x3

    .line 9
    iput p3, p0, Lfreemarker/core/q;->break:I

    goto :goto_5

    :cond_8
    :goto_2
    const/4 p3, 0x6

    .line 10
    iput p3, p0, Lfreemarker/core/q;->break:I

    goto :goto_5

    :cond_9
    :goto_3
    const/4 p3, 0x4

    .line 11
    iput p3, p0, Lfreemarker/core/q;->break:I

    goto :goto_5

    :cond_a
    :goto_4
    const/4 p3, 0x1

    .line 12
    iput p3, p0, Lfreemarker/core/q;->break:I

    .line 13
    :goto_5
    invoke-static {p1}, Lfreemarker/core/b2;->do(Lfreemarker/core/h0;)Lfreemarker/core/h0;

    move-result-object p1

    .line 14
    invoke-static {p2}, Lfreemarker/core/b2;->do(Lfreemarker/core/h0;)Lfreemarker/core/h0;

    move-result-object p2

    .line 15
    instance-of p3, p1, Lfreemarker/core/a$default;

    if-eqz p3, :cond_b

    .line 16
    instance-of p3, p2, Lfreemarker/core/z2;

    if-eqz p3, :cond_c

    .line 17
    check-cast p1, Lfreemarker/core/a$default;

    iget p3, p0, Lfreemarker/core/q;->break:I

    check-cast p2, Lfreemarker/core/z2;

    invoke-virtual {p1, p3, p2}, Lfreemarker/core/a$default;->r(ILfreemarker/core/z2;)V

    goto :goto_6

    .line 18
    :cond_b
    instance-of p3, p2, Lfreemarker/core/a$default;

    if-eqz p3, :cond_c

    .line 19
    instance-of p3, p1, Lfreemarker/core/z2;

    if-eqz p3, :cond_c

    .line 20
    check-cast p2, Lfreemarker/core/a$default;

    iget p3, p0, Lfreemarker/core/q;->break:I

    .line 21
    invoke-static {p3}, Lfreemarker/core/f0;->throw(I)I

    move-result p3

    check-cast p1, Lfreemarker/core/z2;

    .line 22
    invoke-virtual {p2, p3, p1}, Lfreemarker/core/a$default;->r(ILfreemarker/core/z2;)V

    :cond_c
    :goto_6
    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/q;->catch:Ljava/lang/String;

    return-object v0
.end method

.method public continue(Lfreemarker/core/d0;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/q;->goto:Lfreemarker/core/h0;

    iget v1, p0, Lfreemarker/core/q;->break:I

    iget-object v2, p0, Lfreemarker/core/q;->catch:Ljava/lang/String;

    iget-object v3, p0, Lfreemarker/core/q;->this:Lfreemarker/core/h0;

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lfreemarker/core/f0;->this(Lfreemarker/core/h0;ILjava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0;Lfreemarker/core/d0;)Z

    move-result p1

    return p1
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/core/q;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/core/q;->catch:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/q;->this:Lfreemarker/core/h0;

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

    iget-object v0, p0, Lfreemarker/core/q;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h0;->instanceof()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/q;->this:Lfreemarker/core/h0;

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
    new-instance v0, Lfreemarker/core/q;

    iget-object v1, p0, Lfreemarker/core/q;->goto:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/q;->this:Lfreemarker/core/h0;

    .line 3
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    iget-object p2, p0, Lfreemarker/core/q;->catch:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lfreemarker/core/q;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;Ljava/lang/String;)V

    return-object v0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/q;->goto:Lfreemarker/core/h0;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lfreemarker/core/q;->this:Lfreemarker/core/h0;

    :goto_0
    return-object p1
.end method
