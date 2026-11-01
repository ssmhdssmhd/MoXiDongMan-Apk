.class public Lfreemarker/template/import;
.super Lfreemarker/template/throws;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/import$do;
    }
.end annotation


# instance fields
.field private final iterable:Ljava/lang/Iterable;

.field private final iterator:Ljava/util/Iterator;

.field private iteratorOwned:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-direct {p0}, Lfreemarker/template/throws;-><init>()V

    .line 5
    iput-object p1, p0, Lfreemarker/template/import;->iterable:Ljava/lang/Iterable;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lfreemarker/template/import;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;Lfreemarker/template/ObjectWrapper;)V
    .locals 0

    .line 12
    invoke-direct {p0, p2}, Lfreemarker/template/throws;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 13
    iput-object p1, p0, Lfreemarker/template/import;->iterable:Ljava/lang/Iterable;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lfreemarker/template/import;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lfreemarker/template/import;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lfreemarker/template/import;-><init>(Ljava/lang/Iterable;Lfreemarker/template/ObjectWrapper;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/template/throws;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/template/import;->iterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lfreemarker/template/import;->iterable:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)V
    .locals 0

    .line 9
    invoke-direct {p0, p2}, Lfreemarker/template/throws;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 10
    iput-object p1, p0, Lfreemarker/template/import;->iterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lfreemarker/template/import;->iterable:Ljava/lang/Iterable;

    return-void
.end method

.method public static synthetic access$000(Lfreemarker/template/import;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/template/import;->iteratorOwned:Z

    return p0
.end method

.method public static synthetic access$002(Lfreemarker/template/import;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/template/import;->iteratorOwned:Z

    return p1
.end method


# virtual methods
.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/template/import;->iterator:Ljava/util/Iterator;

    new-instance v1, Lfreemarker/template/import$do;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lfreemarker/template/import$do;-><init>(Lfreemarker/template/import;Ljava/util/Iterator;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfreemarker/template/import;->iterable:Ljava/lang/Iterable;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lfreemarker/template/import$do;-><init>(Lfreemarker/template/import;Ljava/util/Iterator;Z)V

    :goto_0
    return-object v1
.end method
