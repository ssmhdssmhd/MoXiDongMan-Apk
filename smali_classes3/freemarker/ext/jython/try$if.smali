.class Lfreemarker/ext/jython/try$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/jython/try;->iterator()Lfreemarker/template/TemplateModelIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public do:I

.field public final synthetic if:Lfreemarker/ext/jython/try;


# direct methods
.method public constructor <init>(Lfreemarker/ext/jython/try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jython/try$if;->if:Lfreemarker/ext/jython/try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lfreemarker/ext/jython/try$if;->do:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/ext/jython/try$if;->do:I

    iget-object v1, p0, Lfreemarker/ext/jython/try$if;->if:Lfreemarker/ext/jython/try;

    invoke-virtual {v1}, Lfreemarker/ext/jython/try;->size()I

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jython/try$if;->if:Lfreemarker/ext/jython/try;

    iget v1, p0, Lfreemarker/ext/jython/try$if;->do:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfreemarker/ext/jython/try$if;->do:I

    invoke-virtual {v0, v1}, Lfreemarker/ext/jython/try;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    return-object v0
.end method
