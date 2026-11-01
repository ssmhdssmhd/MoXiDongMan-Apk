.class Lfreemarker/ext/beans/final;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelAdapter;


# instance fields
.field private final do:Lfreemarker/ext/beans/try;

.field private final if:Lfreemarker/template/TemplateCollectionModel;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateCollectionModel;Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/final;->if:Lfreemarker/template/TemplateCollectionModel;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/beans/final;->do:Lfreemarker/ext/beans/try;

    return-void
.end method

.method public static synthetic do(Lfreemarker/ext/beans/final;)Lfreemarker/template/TemplateCollectionModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/beans/final;->if:Lfreemarker/template/TemplateCollectionModel;

    return-object p0
.end method

.method public static synthetic if(Lfreemarker/ext/beans/final;)Lfreemarker/ext/beans/try;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/beans/final;->do:Lfreemarker/ext/beans/try;

    return-object p0
.end method


# virtual methods
.method public getTemplateModel()Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/final;->if:Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lfreemarker/ext/beans/final$do;

    invoke-direct {v0, p0}, Lfreemarker/ext/beans/final$do;-><init>(Lfreemarker/ext/beans/final;)V
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

.method public size()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
