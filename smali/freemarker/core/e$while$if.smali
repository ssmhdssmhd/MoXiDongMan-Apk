.class Lfreemarker/core/e$while$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e$while;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/e$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/e$while$if;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lfreemarker/core/e$while$for;

    invoke-static {p1}, Lfreemarker/core/e$while$for;->do(Lfreemarker/core/e$while$for;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    check-cast p2, Lfreemarker/core/e$while$for;

    .line 2
    invoke-static {p2}, Lfreemarker/core/e$while$for;->do(Lfreemarker/core/e$while$for;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Date;

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method
