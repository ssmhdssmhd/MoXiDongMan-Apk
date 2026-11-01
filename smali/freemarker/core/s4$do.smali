.class Lfreemarker/core/s4$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/s4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final do:Ljava/lang/Object;

.field private final if:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/s4$do;->do:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lfreemarker/core/s4$do;->if:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic do(Lfreemarker/core/s4$do;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/s4$do;->do:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic if(Lfreemarker/core/s4$do;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/s4$do;->if:Ljava/lang/Object;

    return-object p0
.end method
