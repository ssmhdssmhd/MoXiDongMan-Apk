.class Lcc/shinichi/library/tool/ui/do$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/shinichi/library/tool/ui/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# static fields
.field private static do:Lcc/shinichi/library/tool/ui/do;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcc/shinichi/library/tool/ui/do;

    invoke-direct {v0}, Lcc/shinichi/library/tool/ui/do;-><init>()V

    sput-object v0, Lcc/shinichi/library/tool/ui/do$for;->do:Lcc/shinichi/library/tool/ui/do;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lcc/shinichi/library/tool/ui/do;
    .locals 1

    .line 1
    sget-object v0, Lcc/shinichi/library/tool/ui/do$for;->do:Lcc/shinichi/library/tool/ui/do;

    return-object v0
.end method
