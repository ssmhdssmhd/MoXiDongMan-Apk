.class public abstract Lfreemarker/core/h0;
.super Lfreemarker/core/h4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/h0$do;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public else:Lfreemarker/template/TemplateModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h4;-><init>()V

    return-void
.end method

.method private a(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;Lfreemarker/template/do;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Lfreemarker/core/t;->y()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lfreemarker/core/t;->y()Z

    move-result p3

    if-eqz p3, :cond_3

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1}, Lfreemarker/core/h0;->implements(Lfreemarker/template/TemplateModel;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1

    .line 5
    :cond_3
    new-instance p3, Lfreemarker/core/h2;

    invoke-direct {p3, p0, p1, p2}, Lfreemarker/core/h2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw p3
.end method

.method public static implements(Lfreemarker/template/TemplateModel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lfreemarker/ext/beans/new;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lfreemarker/ext/beans/new;

    invoke-virtual {p0}, Lfreemarker/ext/beans/new;->isEmpty()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Lfreemarker/template/TemplateSequenceModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {p0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 5
    :cond_2
    instance-of v0, p0, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_5

    .line 6
    check-cast p0, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    if-nez p0, :cond_6

    return v2

    .line 8
    :cond_6
    instance-of v0, p0, Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz v0, :cond_7

    .line 9
    check-cast p0, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 10
    invoke-interface {p0}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfreemarker/core/y1;->class(Lfreemarker/core/TemplateMarkupOutputModel;)Z

    move-result p0

    return p0

    .line 11
    :cond_7
    instance-of v0, p0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v0, :cond_8

    .line 12
    check-cast p0, Lfreemarker/template/TemplateCollectionModel;

    invoke-interface {p0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p0

    invoke-interface {p0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 13
    :cond_8
    instance-of v0, p0, Lfreemarker/template/TemplateHashModel;

    if-eqz v0, :cond_9

    .line 14
    check-cast p0, Lfreemarker/template/TemplateHashModel;

    invoke-interface {p0}, Lfreemarker/template/TemplateHashModel;->isEmpty()Z

    move-result p0

    return p0

    .line 15
    :cond_9
    instance-of v0, p0, Lfreemarker/template/TemplateNumberModel;

    if-nez v0, :cond_b

    instance-of v0, p0, Lfreemarker/template/TemplateDateModel;

    if-nez v0, :cond_b

    instance-of p0, p0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz p0, :cond_a

    goto :goto_0

    :cond_a
    return v2

    :cond_b
    :goto_0
    return v1
.end method

.method private strictfp(Lfreemarker/core/d0;Lfreemarker/template/do;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/core/h0;->a(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;Lfreemarker/template/do;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public abstract(Lfreemarker/core/d0;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lfreemarker/core/f0;->else(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lfreemarker/template/TemplateModel;Lfreemarker/template/do;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/h0;->a(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;Lfreemarker/template/do;)Z

    move-result p1

    return p1
.end method

.method public final c(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/template/TemplateNumberModel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lfreemarker/template/TemplateNumberModel;

    invoke-static {p1, p0}, Lfreemarker/core/f0;->import(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/h0;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lfreemarker/core/r2;

    invoke-direct {v0, p0, p1, p2}, Lfreemarker/core/r2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw v0
.end method

.method public final const(Lfreemarker/template/static;IIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lfreemarker/core/h4;->const(Lfreemarker/template/static;IIII)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/h0;->instanceof()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lfreemarker/core/h0;->native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/h0;->else:Lfreemarker/template/TemplateModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public continue(Lfreemarker/core/d0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/core/h0;->strictfp(Lfreemarker/core/d0;Lfreemarker/template/do;)Z

    move-result p1

    return p1
.end method

.method public default(Lfreemarker/core/d0;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lfreemarker/core/f0;->new(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public extends(Lfreemarker/core/d0;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lfreemarker/core/f0;->new(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public finally(Lfreemarker/core/d0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lfreemarker/core/f0;->try(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract instanceof()Z
.end method

.method public final interface(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lfreemarker/core/h0;->public(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    return-object v0
.end method

.method public abstract native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method

.method public package(Lfreemarker/core/d0;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lfreemarker/core/f0;->try(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public private(Lfreemarker/core/d0;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lfreemarker/core/f0;->else(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public protected(Lfreemarker/core/d0;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lfreemarker/core/h0;->c(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public final public(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0, p2}, Lfreemarker/core/b1;->getInstance(Lfreemarker/core/h0;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object p1

    throw p1
.end method

.method public final return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/h0;->static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    .line 2
    iget p2, p1, Lfreemarker/core/h4;->for:I

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lfreemarker/core/h4;->if(Lfreemarker/core/h4;)Lfreemarker/core/h4;

    :cond_0
    return-object p1
.end method

.method public abstract static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
.end method

.method public switch()V
    .locals 0

    return-void
.end method

.method public final synchronized(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/core/h0;->a(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;Lfreemarker/template/do;)Z

    move-result p1

    return p1
.end method

.method public final throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/h0;->else:Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lfreemarker/core/h0;->native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0
    :try_end_0
    .catch Lfreemarker/core/m0; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 2
    invoke-static {v0, p1}, Lfreemarker/core/f0;->return(Ljava/lang/Throwable;Lfreemarker/core/d0;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v1, Landroid/support/v4/nl2;

    const-string v2, "Expression has thrown an unchecked exception; see the cause exception."

    invoke-direct {v1, p0, v0, p1, v2}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Ljava/lang/Throwable;Lfreemarker/core/d0;Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_2
    :goto_1
    instance-of p1, v0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_3

    .line 5
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 6
    :cond_3
    new-instance p1, Landroid/support/v4/kb2;

    invoke-direct {p1, v0}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    .line 7
    throw p1

    :catch_2
    move-exception p1

    .line 8
    throw p1
.end method

.method public final transient(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public volatile(Lfreemarker/template/do;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lfreemarker/core/h0;->strictfp(Lfreemarker/core/d0;Lfreemarker/template/do;)Z

    move-result p1

    return p1
.end method
