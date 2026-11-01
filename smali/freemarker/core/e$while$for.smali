.class Lfreemarker/core/e$while$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e$while;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field private do:Ljava/lang/Object;

.field private if:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lfreemarker/core/e$while$for;->do:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lfreemarker/core/e$while$for;->if:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lfreemarker/core/e$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/e$while$for;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic do(Lfreemarker/core/e$while$for;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/e$while$for;->do:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic if(Lfreemarker/core/e$while$for;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/e$while$for;->if:Ljava/lang/Object;

    return-object p0
.end method
