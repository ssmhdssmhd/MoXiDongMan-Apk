.class Lfreemarker/template/try$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field private do:Z

.field public final synthetic if:Lfreemarker/template/try;


# direct methods
.method private constructor <init>(Lfreemarker/template/try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/try$if;->if:Lfreemarker/template/try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/template/try;Lfreemarker/template/try$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/template/try$if;-><init>(Lfreemarker/template/try;)V

    return-void
.end method

.method private do()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/try$if;->if:Lfreemarker/template/try;

    invoke-static {v0}, Lfreemarker/template/try;->access$100(Lfreemarker/template/try;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/k52;

    const-string v1, "This collection value wraps a java.util.Iterator, thus it can be listed only once."

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/try$if;->do:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/try$if;->do()V

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/template/try$if;->if:Lfreemarker/template/try;

    invoke-static {v0}, Lfreemarker/template/try;->access$200(Lfreemarker/template/try;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/try$if;->do:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/try$if;->do()V

    .line 3
    iget-object v0, p0, Lfreemarker/template/try$if;->if:Lfreemarker/template/try;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfreemarker/template/try;->access$102(Lfreemarker/template/try;Z)Z

    .line 4
    iput-boolean v1, p0, Lfreemarker/template/try$if;->do:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lfreemarker/template/try$if;->if:Lfreemarker/template/try;

    invoke-static {v0}, Lfreemarker/template/try;->access$200(Lfreemarker/template/try;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lfreemarker/template/try$if;->if:Lfreemarker/template/try;

    invoke-static {v0}, Lfreemarker/template/try;->access$200(Lfreemarker/template/try;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lfreemarker/template/TemplateModel;

    if-eqz v1, :cond_1

    check-cast v0, Lfreemarker/template/TemplateModel;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lfreemarker/template/try$if;->if:Lfreemarker/template/try;

    invoke-virtual {v1, v0}, Lfreemarker/template/throws;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :goto_0
    return-object v0

    .line 8
    :cond_2
    new-instance v0, Landroid/support/v4/k52;

    const-string v1, "The collection has no more items."

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0
.end method
