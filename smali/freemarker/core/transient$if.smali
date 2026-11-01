.class abstract Lfreemarker/core/transient$if;
.super Lfreemarker/core/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/transient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/transient$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/transient$if;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    instance-of v1, v0, Lfreemarker/core/g3;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->o3(Z)Z

    move-result v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v1
    :try_end_0
    .catch Lfreemarker/core/b1; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->o3(Z)Z

    .line 5
    throw v1

    :catch_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->o3(Z)Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    :goto_1
    return-object v1
.end method
