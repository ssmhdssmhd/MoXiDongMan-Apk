.class public final Lfreemarker/cache/import$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/import;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# instance fields
.field private final do:Lfreemarker/template/static;

.field private final for:Ljava/lang/String;

.field private final if:Ljava/lang/String;

.field private final new:Landroid/support/v4/fx0;


# direct methods
.method private constructor <init>(Lfreemarker/template/static;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lfreemarker/cache/import$for;->do:Lfreemarker/template/static;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lfreemarker/cache/import$for;->if:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lfreemarker/cache/import$for;->for:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lfreemarker/cache/import$for;->new:Landroid/support/v4/fx0;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/template/static;Lfreemarker/cache/import$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/cache/import$for;-><init>(Lfreemarker/template/static;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/support/v4/fx0;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lfreemarker/cache/import$for;->do:Lfreemarker/template/static;

    .line 11
    iput-object p1, p0, Lfreemarker/cache/import$for;->if:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lfreemarker/cache/import$for;->for:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lfreemarker/cache/import$for;->new:Landroid/support/v4/fx0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/support/v4/fx0;Lfreemarker/cache/import$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lfreemarker/cache/import$for;-><init>(Ljava/lang/String;Landroid/support/v4/fx0;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lfreemarker/cache/import$for;->do:Lfreemarker/template/static;

    .line 16
    iput-object p1, p0, Lfreemarker/cache/import$for;->if:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lfreemarker/cache/import$for;->for:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lfreemarker/cache/import$for;->new:Landroid/support/v4/fx0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/cache/import$do;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lfreemarker/cache/import$for;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/import$for;->if:Ljava/lang/String;

    return-object v0
.end method

.method public for()Lfreemarker/template/static;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/import$for;->do:Lfreemarker/template/static;

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/import$for;->for:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfreemarker/cache/import$for;->new:Landroid/support/v4/fx0;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/fx0;->getMalformednessDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
