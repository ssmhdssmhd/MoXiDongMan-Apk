.class Lfreemarker/ext/beans/for$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field private do:I

.field public final synthetic if:Lfreemarker/ext/beans/for;


# direct methods
.method private constructor <init>(Lfreemarker/ext/beans/for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/for$if;->if:Lfreemarker/ext/beans/for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lfreemarker/ext/beans/for$if;->do:I

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/ext/beans/for;Lfreemarker/ext/beans/for$do;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/for$if;-><init>(Lfreemarker/ext/beans/for;)V

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/for$if;->if:Lfreemarker/ext/beans/for;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/for;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/ext/beans/for$if;->do:I

    iget-object v1, p0, Lfreemarker/ext/beans/for$if;->if:Lfreemarker/ext/beans/for;

    invoke-static {v1}, Lfreemarker/ext/beans/for;->break(Lfreemarker/ext/beans/for;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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
    iget v0, p0, Lfreemarker/ext/beans/for$if;->do:I

    iget-object v1, p0, Lfreemarker/ext/beans/for$if;->if:Lfreemarker/ext/beans/for;

    invoke-static {v1}, Lfreemarker/ext/beans/for;->break(Lfreemarker/ext/beans/for;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lfreemarker/ext/beans/for$if;->do:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfreemarker/ext/beans/for$if;->do:I

    invoke-virtual {p0, v0}, Lfreemarker/ext/beans/for$if;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/for$if;->if:Lfreemarker/ext/beans/for;

    invoke-virtual {v0}, Lfreemarker/ext/beans/for;->size()I

    move-result v0

    return v0
.end method
