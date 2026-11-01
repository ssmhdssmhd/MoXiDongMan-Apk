.class Lcc/shinichi/library/do$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/shinichi/library/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# static fields
.field private static do:Lcc/shinichi/library/do;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcc/shinichi/library/do;

    invoke-direct {v0}, Lcc/shinichi/library/do;-><init>()V

    sput-object v0, Lcc/shinichi/library/do$do;->do:Lcc/shinichi/library/do;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lcc/shinichi/library/do;
    .locals 1

    .line 1
    sget-object v0, Lcc/shinichi/library/do$do;->do:Lcc/shinichi/library/do;

    return-object v0
.end method
