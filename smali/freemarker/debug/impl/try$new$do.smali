.class Lfreemarker/debug/impl/try$new$do;
.super Lfreemarker/debug/impl/try$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/impl/try$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/debug/impl/try$new;


# direct methods
.method public constructor <init>(Lfreemarker/debug/impl/try$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/debug/impl/try$new$do;->do:Lfreemarker/debug/impl/try$new;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lfreemarker/debug/impl/try$try;-><init>(Lfreemarker/debug/impl/try$do;)V

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

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/try$new$do;->do:Lfreemarker/debug/impl/try$new;

    iget-object v0, v0, Lfreemarker/debug/impl/try$if;->do:Lfreemarker/core/t;

    check-cast v0, Lfreemarker/core/d0;

    invoke-virtual {v0, p1}, Lfreemarker/core/d0;->D2(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public if()Ljava/util/Collection;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/debug/impl/try$new$do;->do:Lfreemarker/debug/impl/try$new;

    iget-object v0, v0, Lfreemarker/debug/impl/try$if;->do:Lfreemarker/core/t;

    check-cast v0, Lfreemarker/core/d0;

    invoke-virtual {v0}, Lfreemarker/core/d0;->P1()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/kb2;

    invoke-direct {v1, v0}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
