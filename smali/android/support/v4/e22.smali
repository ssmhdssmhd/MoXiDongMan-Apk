.class public Landroid/support/v4/e22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;


# instance fields
.field private do:[Ljava/lang/String;

.field private if:[Lfreemarker/template/TemplateScalarModel;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/e22;->do:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/e22;->if:[Lfreemarker/template/TemplateScalarModel;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/e22;->do:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lfreemarker/template/TemplateScalarModel;

    iput-object v0, p0, Landroid/support/v4/e22;->if:[Lfreemarker/template/TemplateScalarModel;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/e22;->if:[Lfreemarker/template/TemplateScalarModel;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/support/v4/ez1;

    iget-object v1, p0, Landroid/support/v4/e22;->do:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Landroid/support/v4/e22;->if:[Lfreemarker/template/TemplateScalarModel;

    aput-object v0, v1, p1

    :cond_1
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/e22;->do:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method
