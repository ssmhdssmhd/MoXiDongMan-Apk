.class Lfreemarker/ext/beans/return$do;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/beans/return;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/ext/beans/return;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/return;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/return$do;->do:Lfreemarker/ext/beans/return;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/return$do;->do:Lfreemarker/ext/beans/return;

    invoke-static {v0}, Lfreemarker/ext/beans/return;->do(Lfreemarker/ext/beans/return;)Lfreemarker/template/TemplateHashModelEx;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v1, Lfreemarker/ext/beans/return$do$do;

    invoke-direct {v1, p0, v0}, Lfreemarker/ext/beans/return$do$do;-><init>(Lfreemarker/ext/beans/return$do;Lfreemarker/template/TemplateModelIterator;)V

    return-object v1

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Landroid/support/v4/kb2;

    invoke-direct {v1, v0}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public size()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/return$do;->do:Lfreemarker/ext/beans/return;

    invoke-static {v0}, Lfreemarker/ext/beans/return;->do(Lfreemarker/ext/beans/return;)Lfreemarker/template/TemplateHashModelEx;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result v0
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/kb2;

    invoke-direct {v1, v0}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
