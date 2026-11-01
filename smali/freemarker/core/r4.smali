.class public Lfreemarker/core/r4;
.super Lfreemarker/template/TemplateException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfreemarker/core/d0;Lfreemarker/core/z4;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v0, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/core/z4;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/d0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-static/range {v0 .. v5}, Lfreemarker/core/r4;->goto(Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)Lfreemarker/core/z4;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p3, p5, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/core/z4;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 4
    invoke-static/range {v0 .. v5}, Lfreemarker/core/r4;->goto(Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)Lfreemarker/core/z4;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p5}, Lfreemarker/core/z4;->this(Ljava/lang/String;)Lfreemarker/core/z4;

    move-result-object p2

    const/4 p3, 0x0

    .line 6
    invoke-direct {p0, p3, p6, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/core/z4;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lfreemarker/core/d0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 7
    invoke-static/range {v0 .. v5}, Lfreemarker/core/r4;->goto(Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)Lfreemarker/core/z4;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p5}, Lfreemarker/core/z4;->catch([Ljava/lang/Object;)Lfreemarker/core/z4;

    move-result-object p2

    const/4 p3, 0x0

    .line 9
    invoke-direct {p0, p3, p6, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/core/z4;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lfreemarker/core/d0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 10
    invoke-static/range {v0 .. v5}, Lfreemarker/core/r4;->goto(Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)Lfreemarker/core/z4;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p5}, Lfreemarker/core/z4;->catch([Ljava/lang/Object;)Lfreemarker/core/z4;

    move-result-object p1

    const/4 p2, 0x0

    .line 12
    invoke-direct {p0, p2, p6, p2, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/core/z4;)V

    return-void
.end method

.method private static goto(Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)Lfreemarker/core/z4;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1
    new-instance p5, Lfreemarker/core/z4;

    .line 2
    invoke-static {p3, p0, p1, p2}, Lfreemarker/core/r4;->this(Ljava/lang/String;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/template/TemplateModel;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p5, p1}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p5, p0}, Lfreemarker/core/z4;->if(Lfreemarker/core/h0;)Lfreemarker/core/z4;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lfreemarker/core/z4;->try(Z)Lfreemarker/core/z4;

    move-result-object p0

    .line 4
    instance-of p1, p2, Lfreemarker/core/_UnexpectedTypeErrorExplainerTemplateModel;

    if-eqz p1, :cond_0

    .line 5
    move-object p1, p2

    check-cast p1, Lfreemarker/core/_UnexpectedTypeErrorExplainerTemplateModel;

    invoke-interface {p1, p4}, Lfreemarker/core/_UnexpectedTypeErrorExplainerTemplateModel;->explainTypeError([Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lfreemarker/core/z4;->break([Ljava/lang/Object;)Lfreemarker/core/z4;

    .line 7
    :cond_0
    instance-of p1, p2, Lfreemarker/template/TemplateCollectionModel;

    if-eqz p1, :cond_2

    .line 8
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-class p2, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-class p2, Lfreemarker/template/TemplateCollectionModelEx;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "As the problematic value contains a collection of items, you could convert it to a sequence like someValue?sequence. Be sure though that you won\'t have a large number of items, as all will be held in memory the same time."

    .line 10
    invoke-virtual {p0, p1}, Lfreemarker/core/z4;->this(Ljava/lang/String;)Lfreemarker/core/z4;

    :cond_2
    return-object p0

    .line 11
    :cond_3
    invoke-static {p0, p5}, Lfreemarker/core/b1;->getInstance(Lfreemarker/core/h0;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object p0

    throw p0
.end method

.method private static this(Ljava/lang/String;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/template/TemplateModel;)[Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Expected "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1
    new-instance v1, Landroid/support/v4/zk2;

    invoke-direct {v1, p0}, Landroid/support/v4/zk2;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x1

    aput-object v1, v0, p0

    const-string v1, ", but "

    const/4 v3, 0x2

    aput-object v1, v0, v3

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "this"

    goto :goto_0

    :cond_0
    const-string p0, "the expression"

    goto :goto_0

    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "assignment target variable "

    aput-object v3, v1, v2

    new-instance v2, Landroid/support/v4/fl2;

    invoke-direct {v2, p2}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, p0

    move-object p0, v1

    :goto_0
    const/4 p2, 0x3

    aput-object p0, v0, p2

    const/4 p0, 0x4

    const-string p2, " has evaluated to "

    aput-object p2, v0, p0

    const/4 p0, 0x5

    new-instance p2, Landroid/support/v4/zk2;

    new-instance v1, Landroid/support/v4/bl2;

    invoke-direct {v1, p3}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {p2, v1}, Landroid/support/v4/zk2;-><init>(Ljava/lang/Object;)V

    aput-object p2, v0, p0

    const/4 p0, 0x6

    if-eqz p1, :cond_2

    const-string p1, ":"

    goto :goto_1

    :cond_2
    const-string p1, "."

    :goto_1
    aput-object p1, v0, p0

    return-object v0
.end method
