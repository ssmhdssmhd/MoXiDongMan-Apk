.class final enum Lio/reactivex/internal/functions/do$package;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "package"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/functions/do$package;",
        ">;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lio/reactivex/internal/functions/do$package;

.field private static final synthetic do:[Lio/reactivex/internal/functions/do$package;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/internal/functions/do$package;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/functions/do$package;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/functions/do$package;->INSTANCE:Lio/reactivex/internal/functions/do$package;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/reactivex/internal/functions/do$package;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lio/reactivex/internal/functions/do$package;->do:[Lio/reactivex/internal/functions/do$package;

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

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/functions/do$package;
    .locals 1

    .line 1
    const-class v0, Lio/reactivex/internal/functions/do$package;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/functions/do$package;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/functions/do$package;
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/internal/functions/do$package;->do:[Lio/reactivex/internal/functions/do$package;

    invoke-virtual {v0}, [Lio/reactivex/internal/functions/do$package;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/functions/do$package;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
