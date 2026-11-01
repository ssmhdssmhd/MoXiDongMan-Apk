.class final Lfreemarker/cache/static$if;
.super Lfreemarker/cache/static;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field private static final do:Lfreemarker/cache/static$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/cache/static$if;

    invoke-direct {v0}, Lfreemarker/cache/static$if;-><init>()V

    sput-object v0, Lfreemarker/cache/static$if;->do:Lfreemarker/cache/static$if;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/cache/static;-><init>(Lfreemarker/cache/static$do;)V

    return-void
.end method

.method public static synthetic case()Lfreemarker/cache/static$if;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/cache/static$if;->do:Lfreemarker/cache/static$if;

    return-object v0
.end method


# virtual methods
.method public for()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public try()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
