.class Lfreemarker/debug/impl/try$new;
.super Lfreemarker/debug/impl/try$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/impl/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# static fields
.field private static final new:Ljava/util/List;


# instance fields
.field private for:Lfreemarker/template/TemplateModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Lfreemarker/debug/impl/try$if;->if:Ljava/util/List;

    const-string v1, "currentNamespace"

    const-string v2, "dataModel"

    const-string v3, "globalNamespace"

    const-string v4, "knownVariables"

    const-string v5, "mainNamespace"

    const-string v6, "template"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lfreemarker/debug/impl/try$try;->do(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/try$new;->new:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/debug/impl/try$if;-><init>(Lfreemarker/core/t;)V

    .line 2
    new-instance p1, Lfreemarker/debug/impl/try$new$do;

    invoke-direct {p1, p0}, Lfreemarker/debug/impl/try$new$do;-><init>(Lfreemarker/debug/impl/try$new;)V

    iput-object p1, p0, Lfreemarker/debug/impl/try$new;->for:Lfreemarker/template/TemplateModel;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "currentNamespace"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lfreemarker/debug/impl/try$if;->do:Lfreemarker/core/t;

    check-cast p1, Lfreemarker/core/d0;

    invoke-virtual {p1}, Lfreemarker/core/d0;->y1()Lfreemarker/core/d0$this;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "dataModel"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lfreemarker/debug/impl/try$if;->do:Lfreemarker/core/t;

    check-cast p1, Lfreemarker/core/d0;

    invoke-virtual {p1}, Lfreemarker/core/d0;->D1()Lfreemarker/template/TemplateHashModel;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "globalNamespace"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lfreemarker/debug/impl/try$if;->do:Lfreemarker/core/t;

    check-cast p1, Lfreemarker/core/d0;

    invoke-virtual {p1}, Lfreemarker/core/d0;->I1()Lfreemarker/core/d0$this;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "knownVariables"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p0, Lfreemarker/debug/impl/try$new;->for:Lfreemarker/template/TemplateModel;

    return-object p1

    :cond_3
    const-string v0, "mainNamespace"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object p1, p0, Lfreemarker/debug/impl/try$if;->do:Lfreemarker/core/t;

    check-cast p1, Lfreemarker/core/d0;

    invoke-virtual {p1}, Lfreemarker/core/d0;->U1()Lfreemarker/core/d0$this;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "template"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    :try_start_0
    iget-object p1, p0, Lfreemarker/debug/impl/try$if;->do:Lfreemarker/core/t;

    check-cast p1, Lfreemarker/core/d0;

    invoke-virtual {p1}, Lfreemarker/core/d0;->e2()Lfreemarker/template/static;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/debug/impl/try;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;
    :try_end_0
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Landroid/support/v4/k52;

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 14
    :cond_5
    invoke-super {p0, p1}, Lfreemarker/debug/impl/try$if;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public if()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/debug/impl/try$new;->new:Ljava/util/List;

    return-object v0
.end method
