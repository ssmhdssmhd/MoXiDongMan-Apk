.class Lfreemarker/core/e$while$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e$while;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# instance fields
.field private do:Lfreemarker/core/else;


# direct methods
.method private constructor <init>(Lfreemarker/core/else;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lfreemarker/core/e$while$try;->do:Lfreemarker/core/else;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/else;Lfreemarker/core/e$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/e$while$try;-><init>(Lfreemarker/core/else;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/e$while$try;->do:Lfreemarker/core/else;

    check-cast p1, Lfreemarker/core/e$while$for;

    .line 2
    invoke-static {p1}, Lfreemarker/core/e$while$for;->do(Lfreemarker/core/e$while$for;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    check-cast p2, Lfreemarker/core/e$while$for;

    .line 3
    invoke-static {p2}, Lfreemarker/core/e$while$for;->do(Lfreemarker/core/e$while$for;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    .line 4
    invoke-virtual {v0, p1, p2}, Lfreemarker/core/else;->new(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p1
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to compare numbers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
