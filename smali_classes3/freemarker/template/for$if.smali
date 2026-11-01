.class Lfreemarker/template/for$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field private do:Z

.field public final synthetic if:Lfreemarker/template/for;


# direct methods
.method private constructor <init>(Lfreemarker/template/for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/for$if;->if:Lfreemarker/template/for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/template/for;Lfreemarker/template/for$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/template/for$if;-><init>(Lfreemarker/template/for;)V

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
    iget-object v0, p0, Lfreemarker/template/for$if;->if:Lfreemarker/template/for;

    invoke-static {v0}, Lfreemarker/template/for;->access$100(Lfreemarker/template/for;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/k52;

    const-string v1, "This collection value wraps a java.util.Enumeration, thus it can be listed only once."

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
    iget-boolean v0, p0, Lfreemarker/template/for$if;->do:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/for$if;->do()V

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/template/for$if;->if:Lfreemarker/template/for;

    invoke-static {v0}, Lfreemarker/template/for;->access$200(Lfreemarker/template/for;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

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
    iget-boolean v0, p0, Lfreemarker/template/for$if;->do:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/for$if;->do()V

    .line 3
    iget-object v0, p0, Lfreemarker/template/for$if;->if:Lfreemarker/template/for;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfreemarker/template/for;->access$102(Lfreemarker/template/for;Z)Z

    .line 4
    iput-boolean v1, p0, Lfreemarker/template/for$if;->do:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lfreemarker/template/for$if;->if:Lfreemarker/template/for;

    invoke-static {v0}, Lfreemarker/template/for;->access$200(Lfreemarker/template/for;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lfreemarker/template/for$if;->if:Lfreemarker/template/for;

    invoke-static {v0}, Lfreemarker/template/for;->access$200(Lfreemarker/template/for;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lfreemarker/template/TemplateModel;

    if-eqz v1, :cond_1

    check-cast v0, Lfreemarker/template/TemplateModel;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lfreemarker/template/for$if;->if:Lfreemarker/template/for;

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
