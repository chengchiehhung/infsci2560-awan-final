<template>
  <div class="app-container" >
    <div style="float:left" >
      <div id="main" style="margin-bottom:10px;width: 600px;height:400px;"></div>
      <div id="main1" style="margin-bottom:10px;width: 600px;height:400px;"></div>
    </div>
    <div style="float:left" >
      <div id="main2" style="margin-bottom:10px;width: 600px;height:400px;"></div>
      <div id="main3" style="margin-bottom:10px;width: 600px;height:400px;"></div>
    </div>
  </div>
</template>

<script>

  export default {
    name: 'reports',
    data() {
      return {
        avgReportsList:[{"name":"IT技术课程","avgScore":89},
                   {"name":"导演课程","avgScore":99}
                  ,{"name":"艺术视觉课程","avgScore":96}]
        //avgReportsList:[]
      }
    },
    mounted(){
      this.getAvgReports();

    },
    methods:{
      beforeCreate () {
        document.querySelector('body').setAttribute('style','width:100%;height:100%;background-image:url("../../../static/bg/bg3.jpg")'
        );
      },
      getAvgReports(){
            this.showAvgReports();
            this.showAvgReports1();
            this.showReports();
            this.showReports1();

      },
      showAvgReports(){
        // 基于准备好的dom，初始化echarts实例
        let myChart = this.$echarts.init(document.getElementById('main3'));
        let options = {
          title: {
            text: '漏斗图',
            subtext: '纯属虚构'
          },
          tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c}%"
          },
          toolbox: {
            feature: {
              dataView: {readOnly: false},
              restore: {},
              saveAsImage: {}
            }
          },
          legend: {
            data: ['展现','点击','访问','咨询','订单']
          },

          series: [
            {
              name:'漏斗图',
              type:'funnel',
              left: '10%',
              top: 60,
              //x2: 80,
              bottom: 60,
              width: '80%',
              // height: {totalHeight} - y - y2,
              min: 0,
              max: 100,
              minSize: '0%',
              maxSize: '100%',
              sort: 'descending',
              gap: 2,
              label: {
                show: true,
                position: 'inside'
              },
              labelLine: {
                length: 10,
                lineStyle: {
                  width: 1,
                  type: 'solid'
                }
              },
              itemStyle: {
                borderColor: '#fff',
                borderWidth: 1
              },
              emphasis: {
                label: {
                  fontSize: 20
                }
              },
              data: [
                {value: 60, name: '访问'},
                {value: 40, name: '咨询'},
                {value: 20, name: '订单'},
                {value: 80, name: '点击'},
                {value: 100, name: '展现'}
              ]
            }
          ]
        };
        // 绘制图表
        myChart.setOption(options);
      },
      showAvgReports1(){
        // 基于准备好的dom，初始化echarts实例
        let myChart = this.$echarts.init(document.getElementById('main1'));

        // 绘制图表
        myChart.setOption({
          title: {
            text: '课程的平均成绩排行报表',
            subtext: '数据来自学生的测试情况',
            textStyle:{
              color:'black'
            }
          },
          tooltip: {
            trigger: 'axis',
            axisPointer: {
              type: 'shadow'
            }
          },
          legend: {
            data: ['2020年']
          },
          grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
          },
          xAxis: {
            type: 'value',
            boundaryGap: [0, 0.01],
            axisLine:{
              lineStyle:{
                color:'black'
              }
            }
          },
          yAxis: {
            type: 'category',
            axisLine:{
              lineStyle:{
                color:'black'
              }
            },
            data: this.avgReportsList.map(item=>item.name)
          },
          series: [
            {
              name: '2020年',
              type: 'bar',
              data: this.avgReportsList.map(item => item.avgScore)
            }
          ]
        });
      },
      showReports(){
        var colors = ['#FFAE57', '#FF7853', '#EA5151', '#CC3F57', '#9A2555'];
        var bgColor = 'white';

        var itemStyle = {
          star5: {
            color: colors[0]
          },
          star4: {
            color: colors[1]
          },
          star3: {
            color: colors[2]
          },
          star2: {
            color: colors[3]
          }
        };

        var data = [{
          name: '虚构',
          itemStyle: {
            color: colors[1]
          },
          children: [{
            name: '小说',
            children: [{
              name: '5☆',
              children: [{
                name: '疼'
              }, {
                name: '慈悲'
              }, {
                name: '楼下的房客'
              }]
            }, {
              name: '4☆',
              children: [{
                name: '虚无的十字架'
              }, {
                name: '无声告白'
              }, {
                name: '童年的终结'
              }]
            }, {
              name: '3☆',
              children: [{
                name: '疯癫老人日记'
              }]
            }]
          }, {
            name: '其他',
            children: [{
              name: '5☆',
              children: [{
                name: '纳博科夫短篇小说全集'
              }]
            }, {
              name: '4☆',
              children: [{
                name: '安魂曲'
              }, {
                name: '人生拼图版'
              }]
            }, {
              name: '3☆',
              children: [{
                name: '比起爱你，我更需要你'
              }]
            }]
          }]
        }, {
          name: '非虚构',
          itemStyle: {
            color: colors[2]
          },
          children: [{
            name: '设计',
            children: [{
              name: '5☆',
              children: [{
                name: '无界面交互'
              }]
            }, {
              name: '4☆',
              children: [{
                name: '数字绘图的光照与渲染技术'
              }, {
                name: '日本建筑解剖书'
              }]
            }, {
              name: '3☆',
              children: [{
                name: '奇幻世界艺术\n&RPG地图绘制讲座'
              }]
            }]
          }, {
            name: '社科',
            children: [{
              name: '5☆',
              children: [{
                name: '痛点'
              }]
            }, {
              name: '4☆',
              children: [{
                name: '卓有成效的管理者'
              }, {
                name: '进化'
              }, {
                name: '后物欲时代的来临',
              }]
            }, {
              name: '3☆',
              children: [{
                name: '疯癫与文明'
              }]
            }]
          }, {
            name: '心理',
            children: [{
              name: '5☆',
              children: [{
                name: '我们时代的神经症人格'
              }]
            }, {
              name: '4☆',
              children: [{
                name: '皮格马利翁效应'
              }, {
                name: '受伤的人'
              }]
            }, {
              name: '3☆',
            }, {
              name: '2☆',
              children: [{
                name: '迷恋'
              }]
            }]
          }, {
            name: '居家',
            children: [{
              name: '4☆',
              children: [{
                name: '把房子住成家'
              }, {
                name: '只过必要生活'
              }, {
                name: '北欧简约风格'
              }]
            }]
          }, {
            name: '绘本',
            children: [{
              name: '5☆',
              children: [{
                name: '设计诗'
              }]
            }, {
              name: '4☆',
              children: [{
                name: '假如生活糊弄了你'
              }, {
                name: '博物学家的神秘动物图鉴'
              }]
            }, {
              name: '3☆',
              children: [{
                name: '方向'
              }]
            }]
          }, {
            name: '哲学',
            children: [{
              name: '4☆',
              children: [{
                name: '人生的智慧'
              }]
            }]
          }, {
            name: '技术',
            children: [{
              name: '5☆',
              children: [{
                name: '代码整洁之道'
              }]
            }, {
              name: '4☆',
              children: [{
                name: 'Three.js 开发指南'
              }]
            }]
          }]
        }];

        for (var j = 0; j < data.length; ++j) {
          var level1 = data[j].children;
          for (var i = 0; i < level1.length; ++i) {
            var block = level1[i].children;
            var bookScore = [];
            var bookScoreId;
            for (var star = 0; star < block.length; ++star) {
              var style = (function (name) {
                switch (name) {
                  case '5☆':
                    bookScoreId = 0;
                    return itemStyle.star5;
                  case '4☆':
                    bookScoreId = 1;
                    return itemStyle.star4;
                  case '3☆':
                    bookScoreId = 2;
                    return itemStyle.star3;
                  case '2☆':
                    bookScoreId = 3;
                    return itemStyle.star2;
                }
              })(block[star].name);

              block[star].label = {
                color: style.color,
                downplay: {
                  opacity: 0.5
                }
              };

              if (block[star].children) {
                style = {
                  opacity: 1,
                  color: style.color
                };
                block[star].children.forEach(function (book) {
                  book.value = 1;
                  book.itemStyle = style;

                  book.label = {
                    color: style.color
                  };

                  var value = 1;
                  if (bookScoreId === 0 || bookScoreId === 3) {
                    value = 5;
                  }

                  if (bookScore[bookScoreId]) {
                    bookScore[bookScoreId].value += value;
                  }
                  else {
                    bookScore[bookScoreId] = {
                      color: colors[bookScoreId],
                      value: value
                    };
                  }
                });
              }
            }

            level1[i].itemStyle = {
              color: data[j].itemStyle.color
            };
          }
        }

        let options = {
          backgroundColor: bgColor,
          color: colors,
          series: [{
            type: 'sunburst',
            center: ['50%', '48%'],
            data: data,
            sort: function (a, b) {
              if (a.depth === 1) {
                return b.getValue() - a.getValue();
              }
              else {
                return a.dataIndex - b.dataIndex;
              }
            },
            label: {
              rotate: 'radial',
              color: bgColor
            },
            itemStyle: {
              borderColor: bgColor,
              borderWidth: 2
            },
            levels: [{}, {
              r0: 0,
              r: 40,
              label: {
                rotate: 0
              }
            }, {
              r0: 40,
              r: 105
            }, {
              r0: 115,
              r: 140,
              itemStyle: {
                shadowBlur: 2,
                shadowColor: colors[2],
                color: 'transparent'
              },
              label: {
                rotate: 'tangential',
                fontSize: 10,
                color: colors[0]
              }
            }, {
              r0: 140,
              r: 145,
              itemStyle: {
                shadowBlur: 80,
                shadowColor: colors[0]
              },
              label: {
                position: 'outside',
                textShadowBlur: 5,
                textShadowColor: '#333',
              },
              downplay: {
                label: {
                  opacity: 0.5
                }
              }
            }]
          }]
        };

        let myChart2 = this.$echarts.init(document.getElementById('main2'));

        myChart2.setOption(options)

      },
      showReports1(){
       let options = {
          title: {
            text: '浏览器占比变化',
            subtext: '纯属虚构',
            top: 10,
            left: 10
          },
          tooltip: {
            trigger: 'item',
            backgroundColor: 'rgba(0,0,250,0.2)'
          },
          legend: {
            type: 'scroll',
            bottom: 10,
            data: (function (){
              var list = [];
              for (var i = 1; i <=28; i++) {
                list.push(i + 2000 + '');
              }
              return list;
            })()
          },
          visualMap: {
            top: 'middle',
            right: 10,
            color: ['red', 'yellow'],
            calculable: true
          },
          radar: {
            indicator: [
              { text: 'IE8-', max: 400},
              { text: 'IE9+', max: 400},
              { text: 'Safari', max: 400},
              { text: 'Firefox', max: 400},
              { text: 'Chrome', max: 400}
            ]
          },
          series: (function (){
            var series = [];
            for (var i = 1; i <= 28; i++) {
              series.push({
                name: '浏览器（数据纯属虚构）',
                type: 'radar',
                symbol: 'none',
                lineStyle: {
                  width: 1
                },
                emphasis: {
                  areaStyle: {
                    color: 'rgba(0,250,0,0.3)'
                  }
                },
                data: [{
                  value: [
                    (40 - i) * 10,
                    (38 - i) * 4 + 60,
                    i * 5 + 10,
                    i * 9,
                    i * i /2
                  ],
                  name: i + 2000 + ''
                }]
              });
            }
            return series;
          })()
        };
       let myChart3 = this.$echarts.init(document.getElementById('main'));
        myChart3.setOption(options)
      }
    }
  }
</script>

<style scoped>
 >>> .el-main{
    background-color: #1439391c !important;
  }
</style>
