.class public Lfreemarker/ext/beans/strictfp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;
.implements Lfreemarker/template/TemplateSequenceModel;


# instance fields
.field private final do:Ljava/lang/Object;

.field private final for:Lfreemarker/ext/beans/try;

.field private final if:Lfreemarker/ext/beans/continue;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lfreemarker/ext/beans/continue;Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/strictfp;->do:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/beans/strictfp;->if:Lfreemarker/ext/beans/continue;

    .line 4
    iput-object p3, p0, Lfreemarker/ext/beans/strictfp;->for:Lfreemarker/ext/beans/try;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/strictfp;->if:Lfreemarker/ext/beans/continue;

    iget-object v1, p0, Lfreemarker/ext/beans/strictfp;->for:Lfreemarker/ext/beans/try;

    invoke-virtual {v0, p1, v1}, Lfreemarker/ext/beans/continue;->else(Ljava/util/List;Lfreemarker/ext/beans/try;)Lfreemarker/ext/beans/finally;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/strictfp;->for:Lfreemarker/ext/beans/try;

    iget-object v1, p0, Lfreemarker/ext/beans/strictfp;->do:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lfreemarker/ext/beans/finally;->new(Lfreemarker/ext/beans/try;Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 3
    instance-of v1, v0, Landroid/support/v4/k52;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/k52;

    throw v0

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/ext/beans/strictfp;->do:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lfreemarker/ext/beans/finally;->if()Lfreemarker/ext/beans/this;

    move-result-object p1

    .line 6
    invoke-static {v1, p1, v0}, Lfreemarker/ext/beans/j;->catch(Ljava/lang/Object;Lfreemarker/ext/beans/this;Ljava/lang/Throwable;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1
.end method

.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/az1;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/strictfp;->exec(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1
.end method

.method public size()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?size is unsupported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0
.end method
