.class final Lfreemarker/core/if;
.super Lfreemarker/core/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/if$if;,
        Lfreemarker/core/if$do;,
        Lfreemarker/core/if$for;
    }
.end annotation


# instance fields
.field private final goto:Lfreemarker/core/h0;

.field private final this:Lfreemarker/core/h0;


# direct methods
.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/if;->goto:Lfreemarker/core/h0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/if;->this:Lfreemarker/core/h0;

    return-void
.end method

.method public static d(Lfreemarker/core/d0;Lfreemarker/core/h4;Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Lfreemarker/template/TemplateException;,
            Lfreemarker/core/u2;
        }
    .end annotation

    .line 1
    instance-of v0, p3, Lfreemarker/template/TemplateNumberModel;

    if-eqz v0, :cond_0

    instance-of v0, p5, Lfreemarker/template/TemplateNumberModel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p3, Lfreemarker/template/TemplateNumberModel;

    invoke-static {p3, p2}, Lfreemarker/core/f0;->import(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/h0;)Ljava/lang/Number;

    move-result-object p2

    .line 3
    check-cast p5, Lfreemarker/template/TemplateNumberModel;

    invoke-static {p5, p4}, Lfreemarker/core/f0;->import(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/h0;)Ljava/lang/Number;

    move-result-object p3

    .line 4
    invoke-static {p0, p1, p2, p3}, Lfreemarker/core/if;->e(Lfreemarker/core/d0;Lfreemarker/core/h4;Ljava/lang/Number;Ljava/lang/Number;)Lfreemarker/template/TemplateModel;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    instance-of v0, p3, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_1

    instance-of v0, p5, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_1

    .line 6
    new-instance p0, Lfreemarker/core/if$for;

    check-cast p3, Lfreemarker/template/TemplateSequenceModel;

    check-cast p5, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {p0, p3, p5}, Lfreemarker/core/if$for;-><init>(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/template/TemplateSequenceModel;)V

    return-object p0

    .line 7
    :cond_1
    instance-of v0, p3, Lfreemarker/template/TemplateHashModel;

    if-eqz v0, :cond_2

    instance-of v0, p5, Lfreemarker/template/TemplateHashModel;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-static {p3, p2, v0, v1, p0}, Lfreemarker/core/f0;->case(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;ZLjava/lang/String;Lfreemarker/core/d0;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    .line 9
    invoke-static {p3, p5}, Lfreemarker/core/if;->f(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    invoke-static {p5, p4, v0, v1, p0}, Lfreemarker/core/f0;->case(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;ZLjava/lang/String;Lfreemarker/core/d0;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    .line 11
    invoke-static {p3, p5}, Lfreemarker/core/if;->f(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object p0

    return-object p0

    .line 12
    :cond_4
    instance-of p4, p2, Ljava/lang/String;

    if-eqz p4, :cond_6

    .line 13
    instance-of p4, p0, Ljava/lang/String;

    if-eqz p4, :cond_5

    .line 14
    new-instance p1, Landroid/support/v4/ez1;

    check-cast p2, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 15
    :cond_5
    check-cast p0, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 16
    invoke-interface {p0}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object p4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p4, p2}, Lfreemarker/core/y1;->goto(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p2

    .line 17
    invoke-static {p1, p2, p0}, Lfreemarker/core/f0;->const(Lfreemarker/core/h4;Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    return-object p0

    .line 18
    :cond_6
    check-cast p2, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 19
    instance-of p4, p0, Ljava/lang/String;

    if-eqz p4, :cond_7

    .line 20
    invoke-interface {p2}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object p4

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p4, p0}, Lfreemarker/core/y1;->goto(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    .line 21
    invoke-static {p1, p2, p0}, Lfreemarker/core/f0;->const(Lfreemarker/core/h4;Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    return-object p0

    .line 22
    :cond_7
    check-cast p0, Lfreemarker/core/TemplateMarkupOutputModel;

    invoke-static {p1, p2, p0}, Lfreemarker/core/f0;->const(Lfreemarker/core/h4;Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0
    :try_end_0
    .catch Lfreemarker/core/v2; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    if-eqz v0, :cond_8

    .line 23
    invoke-static {p3, p5}, Lfreemarker/core/if;->f(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object p0

    return-object p0

    .line 24
    :cond_8
    throw p0
.end method

.method public static e(Lfreemarker/core/d0;Lfreemarker/core/h4;Ljava/lang/Number;Ljava/lang/Number;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lfreemarker/core/f0;->super(Lfreemarker/core/d0;Lfreemarker/core/h4;)Lfreemarker/core/else;

    move-result-object p0

    .line 2
    new-instance p1, Landroid/support/v4/az1;

    invoke-virtual {p0, p2, p3}, Lfreemarker/core/else;->for(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V

    return-object p1
.end method

.method private static f(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Lfreemarker/template/TemplateHashModelEx;

    .line 3
    check-cast p1, Lfreemarker/template/TemplateHashModelEx;

    .line 4
    invoke-interface {p0}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lfreemarker/core/if$if;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/if$if;-><init>(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/template/TemplateHashModelEx;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Lfreemarker/core/if$do;

    check-cast p0, Lfreemarker/template/TemplateHashModel;

    check-cast p1, Lfreemarker/template/TemplateHashModel;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/if$do;-><init>(Lfreemarker/template/TemplateHashModel;Lfreemarker/template/TemplateHashModel;)V

    return-object v0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "+"

    return-object v0
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

    iget-object v1, p0, Lfreemarker/core/if;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/if;->this:Lfreemarker/core/h0;

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

    iget-object v0, p0, Lfreemarker/core/if;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h0;->instanceof()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/if;->this:Lfreemarker/core/h0;

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

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v2, p0, Lfreemarker/core/if;->goto:Lfreemarker/core/h0;

    invoke-virtual {v2, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    iget-object v4, p0, Lfreemarker/core/if;->this:Lfreemarker/core/h0;

    invoke-virtual {v4, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lfreemarker/core/if;->d(Lfreemarker/core/d0;Lfreemarker/core/h4;Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/core/if;

    iget-object v1, p0, Lfreemarker/core/if;->goto:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/if;->this:Lfreemarker/core/h0;

    .line 3
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lfreemarker/core/if;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    return-object v0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/if;->goto:Lfreemarker/core/h0;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lfreemarker/core/if;->this:Lfreemarker/core/h0;

    :goto_0
    return-object p1
.end method
