.class Lfreemarker/ext/beans/return$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/beans/return$do;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/template/TemplateModelIterator;

.field public final synthetic if:Lfreemarker/ext/beans/return$do;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/return$do;Lfreemarker/template/TemplateModelIterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/return$do$do;->if:Lfreemarker/ext/beans/return$do;

    iput-object p2, p0, Lfreemarker/ext/beans/return$do$do;->do:Lfreemarker/template/TemplateModelIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/return$do$do;->do:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

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

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/return$do$do;->if:Lfreemarker/ext/beans/return$do;

    iget-object v0, v0, Lfreemarker/ext/beans/return$do;->do:Lfreemarker/ext/beans/return;

    invoke-static {v0}, Lfreemarker/ext/beans/return;->if(Lfreemarker/ext/beans/return;)Lfreemarker/ext/beans/try;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/return$do$do;->do:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/try;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v1, Lfreemarker/ext/beans/return$do$do$do;

    invoke-direct {v1, p0, v0}, Lfreemarker/ext/beans/return$do$do$do;-><init>(Lfreemarker/ext/beans/return$do$do;Ljava/lang/Object;)V

    return-object v1

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Landroid/support/v4/kb2;

    invoke-direct {v1, v0}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
