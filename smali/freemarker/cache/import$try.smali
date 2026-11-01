.class final Lfreemarker/cache/import$try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/import;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field private final for:Ljava/lang/Object;

.field private final if:Ljava/util/Locale;

.field private final new:Ljava/lang/String;

.field private final try:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/cache/import$try;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lfreemarker/cache/import$try;->if:Ljava/util/Locale;

    .line 4
    iput-object p3, p0, Lfreemarker/cache/import$try;->for:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lfreemarker/cache/import$try;->new:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lfreemarker/cache/import$try;->try:Z

    return-void
.end method

.method private do(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lfreemarker/cache/import$try;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lfreemarker/cache/import$try;

    .line 3
    iget-boolean v0, p0, Lfreemarker/cache/import$try;->try:Z

    iget-boolean v2, p1, Lfreemarker/cache/import$try;->try:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lfreemarker/cache/import$try;->do:Ljava/lang/String;

    iget-object v2, p1, Lfreemarker/cache/import$try;->do:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfreemarker/cache/import$try;->if:Ljava/util/Locale;

    iget-object v2, p1, Lfreemarker/cache/import$try;->if:Ljava/util/Locale;

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfreemarker/cache/import$try;->for:Ljava/lang/Object;

    iget-object v2, p1, Lfreemarker/cache/import$try;->for:Ljava/lang/Object;

    .line 6
    invoke-direct {p0, v0, v2}, Lfreemarker/cache/import$try;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfreemarker/cache/import$try;->new:Ljava/lang/String;

    iget-object p1, p1, Lfreemarker/cache/import$try;->new:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/cache/import$try;->do:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lfreemarker/cache/import$try;->if:Ljava/util/Locale;

    .line 3
    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lfreemarker/cache/import$try;->new:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lfreemarker/cache/import$try;->for:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lfreemarker/cache/import$try;->try:Z

    xor-int/lit8 v1, v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
