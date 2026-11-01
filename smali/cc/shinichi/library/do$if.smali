.class public final enum Lcc/shinichi/library/do$if;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/shinichi/library/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcc/shinichi/library/do$if;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AlwaysOrigin:Lcc/shinichi/library/do$if;

.field public static final enum AlwaysThumb:Lcc/shinichi/library/do$if;

.field public static final enum Default:Lcc/shinichi/library/do$if;

.field public static final enum NetworkAuto:Lcc/shinichi/library/do$if;

.field private static final synthetic do:[Lcc/shinichi/library/do$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcc/shinichi/library/do$if;

    const-string v1, "AlwaysOrigin"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcc/shinichi/library/do$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc/shinichi/library/do$if;->AlwaysOrigin:Lcc/shinichi/library/do$if;

    .line 2
    new-instance v1, Lcc/shinichi/library/do$if;

    const-string v3, "AlwaysThumb"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcc/shinichi/library/do$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcc/shinichi/library/do$if;->AlwaysThumb:Lcc/shinichi/library/do$if;

    .line 3
    new-instance v3, Lcc/shinichi/library/do$if;

    const-string v5, "NetworkAuto"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcc/shinichi/library/do$if;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcc/shinichi/library/do$if;->NetworkAuto:Lcc/shinichi/library/do$if;

    .line 4
    new-instance v5, Lcc/shinichi/library/do$if;

    const-string v7, "Default"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcc/shinichi/library/do$if;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcc/shinichi/library/do$if;->Default:Lcc/shinichi/library/do$if;

    const/4 v7, 0x4

    new-array v7, v7, [Lcc/shinichi/library/do$if;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcc/shinichi/library/do$if;->do:[Lcc/shinichi/library/do$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcc/shinichi/library/do$if;
    .locals 1

    .line 1
    const-class v0, Lcc/shinichi/library/do$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcc/shinichi/library/do$if;

    return-object p0
.end method

.method public static values()[Lcc/shinichi/library/do$if;
    .locals 1

    .line 1
    sget-object v0, Lcc/shinichi/library/do$if;->do:[Lcc/shinichi/library/do$if;

    invoke-virtual {v0}, [Lcc/shinichi/library/do$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcc/shinichi/library/do$if;

    return-object v0
.end method
