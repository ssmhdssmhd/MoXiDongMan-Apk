.class Lfreemarker/core/h$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/h$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field public final synthetic for:Lfreemarker/core/h$do;

.field private final if:Lfreemarker/core/d0;


# direct methods
.method public constructor <init>(Lfreemarker/core/h$do;Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/h$do$do;->for:Lfreemarker/core/h$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/core/h$do$do;->do:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lfreemarker/core/h$do$do;->if:Lfreemarker/core/d0;

    return-void
.end method

.method private do(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/h$do$do;->if:Lfreemarker/core/d0;

    iget-object v1, p0, Lfreemarker/core/h$do$do;->do:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/d0;->x3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/core/d0;->k3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/fx0; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/vl2;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Can\'t resolve "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/support/v4/fl2;

    iget-object v5, p0, Lfreemarker/core/h$do$do;->do:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "to absolute template name using base "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Landroid/support/v4/fl2;

    invoke-direct {v4, p1}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 p1, 0x4

    const-string v3, "; see cause exception"

    aput-object v3, v2, p1

    invoke-direct {v1, v0, v2}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1
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
    iget-object v0, p0, Lfreemarker/core/h$do$do;->for:Lfreemarker/core/h$do;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/return;->f(Ljava/util/List;I)V

    .line 2
    iget-object v0, p0, Lfreemarker/core/h$do$do;->for:Lfreemarker/core/h$do;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/return;->k(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/h$do$do;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/h$do$do;->for:Lfreemarker/core/h$do;

    invoke-virtual {v0}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/h$do$do;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
