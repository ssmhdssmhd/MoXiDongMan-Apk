.class Lfreemarker/core/e$new$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final do:Lfreemarker/template/TemplateSequenceModel;

.field private final for:Lfreemarker/template/TemplateModel;

.field private final if:I

.field private final new:I


# direct methods
.method private constructor <init>(Lfreemarker/template/TemplateSequenceModel;ILfreemarker/template/TemplateModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lfreemarker/core/e$new$if;->do:Lfreemarker/template/TemplateSequenceModel;

    .line 4
    iput p2, p0, Lfreemarker/core/e$new$if;->if:I

    .line 5
    iput-object p3, p0, Lfreemarker/core/e$new$if;->for:Lfreemarker/template/TemplateModel;

    .line 6
    invoke-interface {p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result p1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, p2

    iput p1, p0, Lfreemarker/core/e$new$if;->new:I

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/template/TemplateSequenceModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/e$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/core/e$new$if;-><init>(Lfreemarker/template/TemplateSequenceModel;ILfreemarker/template/TemplateModel;)V

    return-void
.end method

.method public static synthetic do(Lfreemarker/core/e$new$if;)I
    .locals 0

    .line 1
    iget p0, p0, Lfreemarker/core/e$new$if;->if:I

    return p0
.end method

.method public static synthetic for(Lfreemarker/core/e$new$if;)I
    .locals 0

    .line 1
    iget p0, p0, Lfreemarker/core/e$new$if;->new:I

    return p0
.end method

.method public static synthetic if(Lfreemarker/core/e$new$if;)Lfreemarker/template/TemplateSequenceModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/e$new$if;->do:Lfreemarker/template/TemplateSequenceModel;

    return-object p0
.end method

.method public static synthetic new(Lfreemarker/core/e$new$if;)Lfreemarker/template/TemplateModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/e$new$if;->for:Lfreemarker/template/TemplateModel;

    return-object p0
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
    iget v0, p0, Lfreemarker/core/e$new$if;->new:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lfreemarker/core/e$new$if$do;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/e$new$if$do;-><init>(Lfreemarker/core/e$new$if;I)V

    return-object v0
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/e$new$if;->new:I

    return v0
.end method
