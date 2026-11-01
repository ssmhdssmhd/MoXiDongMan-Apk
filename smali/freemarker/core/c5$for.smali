.class abstract Lfreemarker/core/c5$for;
.super Lfreemarker/core/c5$break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/c5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "for"
.end annotation


# instance fields
.field public do:Ljava/util/List;

.field public for:Ljava/util/List;

.field public if:Ljava/util/List;

.field public final synthetic new:Lfreemarker/core/c5;


# direct methods
.method private constructor <init>(Lfreemarker/core/c5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/c5$for;->new:Lfreemarker/core/c5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lfreemarker/core/c5$break;-><init>(Lfreemarker/core/c5$do;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfreemarker/core/c5$for;->do:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfreemarker/core/c5$for;->if:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfreemarker/core/c5$for;->for:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/c5;Lfreemarker/core/c5$do;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lfreemarker/core/c5$for;-><init>(Lfreemarker/core/c5;)V

    return-void
.end method


# virtual methods
.method public abstract if()Z
.end method
