.class final Lfreemarker/ext/beans/break;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/break;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do()C
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/break;->do:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/break;->do:Ljava/lang/String;

    return-object v0
.end method
