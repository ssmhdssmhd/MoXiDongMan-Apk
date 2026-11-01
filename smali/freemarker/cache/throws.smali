.class public abstract Lfreemarker/cache/throws;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/cache/throws$for;,
        Lfreemarker/cache/throws$if;
    }
.end annotation


# static fields
.field public static final do:Lfreemarker/cache/throws;

.field public static final if:Lfreemarker/cache/throws;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/cache/throws$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/cache/throws$if;-><init>(Lfreemarker/cache/throws$do;)V

    sput-object v0, Lfreemarker/cache/throws;->do:Lfreemarker/cache/throws;

    .line 2
    new-instance v0, Lfreemarker/cache/throws$for;

    invoke-direct {v0, v1}, Lfreemarker/cache/throws$for;-><init>(Lfreemarker/cache/throws$do;)V

    sput-object v0, Lfreemarker/cache/throws;->if:Lfreemarker/cache/throws;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/cache/throws$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/cache/throws;-><init>()V

    return-void
.end method

.method public static synthetic do(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fx0;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lfreemarker/cache/throws;->for(Ljava/lang/String;)V

    return-void
.end method

.method private static for(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fx0;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/fx0;

    const-string v1, "Null character (\\u0000) in the name; possible attack attempt"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/fx0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic if(Ljava/lang/String;)Landroid/support/v4/fx0;
    .locals 0

    .line 1
    invoke-static {p0}, Lfreemarker/cache/throws;->new(Ljava/lang/String;)Landroid/support/v4/fx0;

    move-result-object p0

    return-object p0
.end method

.method private static new(Ljava/lang/String;)Landroid/support/v4/fx0;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/fx0;

    const-string v1, "Backing out from the root directory is not allowed"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/fx0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract case(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fx0;
        }
    .end annotation
.end method

.method public abstract else(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fx0;
        }
    .end annotation
.end method

.method public abstract try(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fx0;
        }
    .end annotation
.end method
