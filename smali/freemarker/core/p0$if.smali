.class Lfreemarker/core/p0$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/p0;->exec(Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/core/d0;

.field public final synthetic for:Lfreemarker/core/p0;

.field public final synthetic if:Lfreemarker/template/static;


# direct methods
.method public constructor <init>(Lfreemarker/core/p0;Lfreemarker/core/d0;Lfreemarker/template/static;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/p0$if;->for:Lfreemarker/core/p0;

    iput-object p2, p0, Lfreemarker/core/p0$if;->do:Lfreemarker/core/d0;

    iput-object p3, p0, Lfreemarker/core/p0$if;->if:Lfreemarker/template/static;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "Failed to import loaded template; see cause exception"

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lfreemarker/core/p0$if;->do:Lfreemarker/core/d0;

    iget-object v1, p0, Lfreemarker/core/p0$if;->if:Lfreemarker/template/static;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lfreemarker/core/d0;->F2(Lfreemarker/template/static;Ljava/lang/String;)Lfreemarker/core/d0$this;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v1, Landroid/support/v4/vl2;

    invoke-direct {v1, p1, v0}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception p1

    .line 4
    new-instance v1, Landroid/support/v4/vl2;

    invoke-direct {v1, p1, v0}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_0
    new-instance p1, Landroid/support/v4/k52;

    const-string v0, "This method supports no parameters."

    invoke-direct {p1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1
.end method
